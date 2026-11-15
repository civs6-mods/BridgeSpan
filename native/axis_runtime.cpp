// Native packaging of BridgeSpan's existing axis rules, with no external runner.
#include <windows.h>
#include <bcrypt.h>
#include <atomic>
#include <algorithm>
#include <charconv>
#include <cstdio>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <map>
#include <memory>
#include <mutex>
#include <string>
#include <vector>
#include "vendor/minhook/include/MinHook.h"
#include "axis_health.h"
#pragma comment(lib, "bcrypt.lib")

// Generated from our existing C implementation; snapshot reads become atomic.
extern "C" {
#include "build/axis_rules.inc"
PathCheck original_path, original_breadth_first, original_trade;
MoveCheck original_move;
IncludesDomain includes_domain;
FirstPathPlot first_path_plot;
ClearPath clear_path;
CurrentMap current_map;
TradeStep original_trade_step;
FindTradePath find_trade_path;
PushPlot push_plot;
FreePath free_path;
SetIndex set_index;
}

using LogFn = void (*)(const char*, const wchar_t*);
static LogFn logLine;
static std::atomic<const Snapshot*> published{nullptr};
static std::mutex publishMutex;
static std::map<std::string, std::unique_ptr<unsigned char[]>> snapshots;
static std::string lastPayload;
static bool hasPayload;
static size_t retainedBytes;
// Immutable-snapshot memory ceiling; a variable so offline tests can lower it.
static size_t retainedBytesLimit = 64u*1024u*1024u;
static std::vector<void*> targets;
static bool hooksReady;
static bool minhookUp;
using LuaCall = int (*)(void*);
using GetTop = int (*)(void*);
using GetType = int (*)(void*,int);
using GetString = const char* (*)(void*,int);
using ResetGame = uintptr_t (*)(void*);
static LuaCall baseSetProperty;
static GetTop getTop;
static GetType getType;
static GetString getString;
static ResetGame baseResetGame;

// Lua property keys. The axis payload flows Lua -> native; the challenge key
// lets native prove liveness by echoing the nonce into its health receipt.
static const char AXIS_PAYLOAD_KEY[] = "BS_NativeBridgeAxis_v1";
static const char HEALTH_PROBE_KEY[] = "BS_BridgeHealth_Probe_v1";
// Reserved immediate-handshake key: the setProperty hook answers THIS call
// with a nonce echo plus integer facts and never reaches the original setter.
// Protocol: (echo, protocol, state, publishOk, deckCount, publishRejected);
// state uses the BsState order, so 1 == ACTIVE.
static const char HEALTH_QUERY_KEY[] = "BS_BridgeHealth_Query_v1";
enum { HEALTH_QUERY_PROTOCOL = 1, HEALTH_QUERY_RESULTS = 6 };

// Name-resolved Lua exports for the immediate handshake (evidence:
// health-export-evidence.json; resolved by name from the fingerprinted
// module, never by guessed offset). Any resolution failure disables the
// query interface with a clear receipt boundary; everything else is intact.
using QueryPushValue = void (__cdecl*)(void*, int);
using QueryPushInteger = void (__cdecl*)(void*, int);
using QueryGetTop = int (__cdecl*)(void*);
using QuerySetTop = void (__cdecl*)(void*, int);
static QueryPushValue queryPushValue;
static QueryPushInteger queryPushInteger;
static QueryGetTop queryGetTop;
static QuerySetTop querySetTop;
static bool healthQueryReady;

static void resolveHealthQuery(unsigned char* base) {
    struct Entry { const char* name; void* resolved; };
    Entry entries[] = {
        {"?lua_pushvalue@@YAXPEAUlua_State@@H@Z", nullptr},
        {"?lua_pushinteger@@YAXPEAUlua_State@@H@Z", nullptr},
        {"?lua_gettop@@YAHPEAUlua_State@@@Z", nullptr},
        {"?lua_settop@@YAXPEAUlua_State@@H@Z", nullptr},
    };
    char missing[128]{};
    size_t used = 0;
    for (auto& e : entries) {
        e.resolved = reinterpret_cast<void*>(GetProcAddress(reinterpret_cast<HMODULE>(base), e.name));
        if (!e.resolved && used + 24 < sizeof(missing)) {
            const char* shortName = strstr(e.name, "lua_");
            const int n = snprintf(missing + used, sizeof(missing) - used, "%s%s",
                                   used ? "," : "", shortName ? shortName : e.name);
            if (n > 0) used += static_cast<size_t>(n);
        }
    }
    queryPushValue = reinterpret_cast<QueryPushValue>(entries[0].resolved);
    queryPushInteger = reinterpret_cast<QueryPushInteger>(entries[1].resolved);
    queryGetTop = reinterpret_cast<QueryGetTop>(entries[2].resolved);
    querySetTop = reinterpret_cast<QuerySetTop>(entries[3].resolved);
    healthQueryReady = missing[0] == 0;
    try {
        if (healthQueryReady) {
            bs_health_note_query("ready", "");
            logLine("AXIS_HEALTH_QUERY_READY", L"");
        } else {
            bs_health_note_query("unresolved", missing);
            logLine("AXIS_HEALTH_QUERY_UNREADY", L"");
        }
    } catch (...) {}
}

extern "C" const Snapshot* read_snapshot() { return published.load(std::memory_order_acquire); }

static void noteRejected(const char* reason) { bs_health_note_publish(false, bs_health_query().lastDeckCount, reason); }

static bool publishPayload(const char* value) {
    if (!value) { noteRejected("MALFORMED"); return false; }
    const size_t length = strnlen_s(value,512001);
    if (length > 512000) { noteRejected("OVERSIZE"); return false; }
    std::lock_guard<std::mutex> lock(publishMutex);
    std::string payload(value,length);
    if (hasPayload && payload==lastPayload) {
        // Repeating the last valid payload after a rejected one must restore
        // an accurate receipt instead of reporting a stale failure.
        const BsHealth snapshot=bs_health_query();
        if (!snapshot.lastPublishOk)
            bs_health_note_publish(true,read_snapshot()?read_snapshot()->count:0u,"");
        return true;
    }
    if (payload.empty()) {
        published.store(nullptr,std::memory_order_release);
    } else {
        auto found=snapshots.find(payload);
        if (found==snapshots.end()) {
            std::vector<Deck> decks;
            const char* p=payload.data(); const char* end=p+payload.size();
            while(p<end) {
                unsigned int xy[6]{};
                for(int i=0;i<6;++i) {
                    auto result=std::from_chars(p,end,xy[i]);
                    if(result.ec!=std::errc() || result.ptr==p || xy[i]>=32768) { noteRejected("MALFORMED"); return false; }
                    p=result.ptr;
                    if(i<5 && (p==end || *p++!=',')) { noteRejected("MALFORMED"); return false; }
                }
                decks.push_back({plot_key(xy[0],xy[1]),plot_key(xy[2],xy[3]),plot_key(xy[4],xy[5])});
                if(p<end && (*p++!=';' || p==end)) { noteRejected("MALFORMED"); return false; }
            }
            std::sort(decks.begin(),decks.end(),[](const Deck& a,const Deck& b){return a.plot<b.plot;});
            for(size_t i=1;i<decks.size();++i) if(decks[i-1].plot==decks[i].plot){ noteRejected("DUPLICATE"); return false; }
            size_t size=sizeof(Snapshot)+decks.size()*sizeof(Deck);
            if(retainedBytes+size>retainedBytesLimit) { noteRejected("LIMIT"); return false; }
            auto memory=std::make_unique<unsigned char[]>(size);
            auto snapshot=reinterpret_cast<Snapshot*>(memory.get());
            snapshot->count=static_cast<unsigned int>(decks.size());
            memcpy(snapshot->decks,decks.data(),decks.size()*sizeof(Deck));
            found=snapshots.emplace(payload,std::move(memory)).first;
            retainedBytes+=size;
        }
        published.store(reinterpret_cast<const Snapshot*>(found->second.get()),std::memory_order_release);
    }
    const unsigned int deckCount = payload.empty() ? 0u : read_snapshot()->count;
    lastPayload=std::move(payload);hasPayload=true;
    bs_health_note_publish(true,deckCount,"");
    auto detail=std::to_wstring(deckCount);
    logLine("AXIS_SNAPSHOT_DECKS",detail.c_str());
    return true;
}

// Lifecycle-aware residual check: hooks are only "residual" when we are NOT
// actively routing through them, yet some remain created or MinHook stays
// initialized — i.e. a stop could not prove removal. An ACTIVE install with
// a full targets table is normal operation, not a residual (review 16:50).
bool axisHasResiduals() { return !hooksReady && (!targets.empty() || minhookUp); }

static void clearSnapshot() {
    std::lock_guard<std::mutex> lock(publishMutex);
    // While a stop could not prove every detour removed, a surviving hook
    // keeps executing and consulting this snapshot; clearing it would silently
    // turn strict bridge rules into permissive vanilla ones (fail open).
    // Refuse to clear only for failed teardown — a normal ACTIVE resetGame
    // clears the old map as before. Callers treat this as best effort.
    if (axisHasResiduals()) return;
    published.store(nullptr,std::memory_order_release);
    hasPayload=false;lastPayload.clear();
    bs_health_note_clear();
    // Old immutable snapshots remain valid for path workers retaining pointers.
}

static void logMessageProbe(const char* nonce) {
    // The probe nonce is ASCII; widen it for the existing UTF-8 log.
    wchar_t wide[64]{};
    for(size_t i=0;i<63 && nonce[i];++i) wide[i]=static_cast<unsigned char>(nonce[i]);
    logLine("AXIS_HEALTH_PROBE",wide);
}

static int setProperty(void* state) {
    // Everything BridgeSpan does here is diagnostic bookkeeping except the
    // reserved query key, which answers this call natively; none of it may
    // block or corrupt the original setter call. Boundaries catch C++
    // exceptions only; SEH stays visible by design (/EHsc build).
    try {
        if(getTop(state)>=1 && getType(state,1)==4) {
            auto key=getString(state,1);
            if(key && strcmp(key,HEALTH_QUERY_KEY)==0) {
                // Immediate handshake: echo this call's nonce plus integer
                // facts, store nothing (no ack in saves), skip the original
                // setter. Invalid/unsupported queries return no values and
                // never persist an acknowledgement in a save.
                if(!healthQueryReady || getTop(state)!=2 || getType(state,2)!=4) return 0;
                const char* nonce=getString(state,2);
                const size_t nonceLength=nonce?strnlen_s(nonce,129):0;
                if(nonceLength==0 || nonceLength>128) return 0;
                const int baseline=queryGetTop(state);
                try {
                    const BsHealth now=bs_health_query();
                    const Snapshot* snapshot=read_snapshot();
                    queryPushValue(state,2);
                    queryPushInteger(state,HEALTH_QUERY_PROTOCOL);
                    queryPushInteger(state,hooksReady?static_cast<int>(BsState::Active):static_cast<int>(BsState::Stopped));
                    queryPushInteger(state,now.lastPublishOk?1:0);
                    queryPushInteger(state,snapshot?static_cast<int>(snapshot->count):0);
                    queryPushInteger(state,static_cast<int>(now.publishRejected));
                    try { bs_health_note_query_answered(); } catch (...) {}
                    return HEALTH_QUERY_RESULTS;
                } catch(...) {
                    try { querySetTop(state,baseline); } catch (...) {}
                }
                return 0;
            } else if(getTop(state)==2 && getType(state,2)==4 && key && strcmp(key,AXIS_PAYLOAD_KEY)==0) {
                try { if(!publishPayload(getString(state,2))) logLine("AXIS_PAYLOAD_REJECTED",L""); }
                catch(...) {
                    try { noteRejected("EXCEPTION"); } catch(...) {}
                    try { logLine("AXIS_PUBLISH_FAILED",L""); } catch(...) {}
                }
            } else if(getTop(state)==2 && getType(state,2)==4 && key && strcmp(key,HEALTH_PROBE_KEY)==0) {
                // Liveness challenge: the nonce is echoed into the native
                // receipt, which no Lua code can write.
                auto nonce=getString(state,2);
                try { bs_health_note_probe(nonce?nonce:""); } catch(...) {}
                try { logMessageProbe(nonce?nonce:""); } catch(...) {}
            }
        }
    } catch(...) { /* diagnostics never block the original setter */ }
    return baseSetProperty(state);
}

static uintptr_t resetGame(void* context) {
    // Rule-state teardown is best effort: a diagnostics failure here must not
    // block the original reset.
    try { clearSnapshot(); }
    catch(...) { try { logLine("AXIS_CLEAR_FAILED",L""); } catch(...) {} }
    return baseResetGame(context);
}

// Size-gated fingerprint check: the file size is read before any content is,
// so an oversized or missing core costs one metadata call, not a full read.
static bool supportedCore(const wchar_t* path,char* detail,size_t detailCapacity) {
    std::error_code error;
    const auto size=std::filesystem::file_size(std::filesystem::path(path),error);
    if(error) {
        snprintf(detail,detailCapacity,"core file status error %lu",error.value());
        return false;
    }
    if(size>64u*1024u*1024u) {
        snprintf(detail,detailCapacity,"core size %llu exceeds supported maximum",static_cast<unsigned long long>(size));
        return false;
    }
    if(size<1024) {
        snprintf(detail,detailCapacity,"core size %llu is too small to be a game core",static_cast<unsigned long long>(size));
        return false;
    }
    std::ifstream input(std::filesystem::path(path),std::ios::binary);
    if(!input) {
        snprintf(detail,detailCapacity,"core file open failed");
        return false;
    }
    std::vector<unsigned char> bytes;
    bytes.resize(static_cast<size_t>(size));
    input.read(reinterpret_cast<char*>(bytes.data()),static_cast<std::streamsize>(size));
    if(input.gcount()!=static_cast<std::streamsize>(size)) {
        snprintf(detail,detailCapacity,"core file read incomplete");
        return false;
    }
    unsigned char hash[32]{};
    if(BCryptHash(BCRYPT_SHA256_ALG_HANDLE,nullptr,0,bytes.data(),static_cast<ULONG>(bytes.size()),hash,32)<0) {
        snprintf(detail,detailCapacity,"SHA-256 computation failed");
        return false;
    }
    static const char expected[]="092abfbb2176f8df04b5212f819dc269dd83aea866ff05aaf489904a1ff7c41f";
    static const char hex[]="0123456789abcdef";
    for(int i=0;i<32;++i)if(expected[i*2]!=hex[hash[i]>>4] || expected[i*2+1]!=hex[hash[i]&15]) {
        // Report enough of the actual hash to identify the player's build
        // without treating an unknown version as supported.
        char actual[17]{};
        for(int j=0;j<8;++j){actual[j*2]=hex[hash[j]>>4];actual[j*2+1]=hex[hash[j]&15];}
        snprintf(detail,detailCapacity,"fingerprint mismatch, actual sha256 starts %s",actual);
        return false;
    }
    return true;
}

struct HookSpec{size_t offset;void* hook;void** original;unsigned int prologue;};
static const HookSpec hookTable[]={
    {0x1a9f00,reinterpret_cast<void*>(check_path),reinterpret_cast<void**>(&original_path),0x245c8948},
    {0x1a6e00,reinterpret_cast<void*>(check_breadth_first),reinterpret_cast<void**>(&original_breadth_first),0x244c8944},
    {0x1aa510,reinterpret_cast<void*>(check_move),reinterpret_cast<void**>(&original_move),0x245c8948},
    {0x393840,reinterpret_cast<void*>(check_trade),reinterpret_cast<void**>(&original_trade),0x56555340},
    {0x383e00,reinterpret_cast<void*>(check_trade_step),reinterpret_cast<void**>(&original_trade_step),0x83485340},
    {0x6d7f50,reinterpret_cast<void*>(setProperty),reinterpret_cast<void**>(&baseSetProperty),0x83485340},
    {0x63e160,reinterpret_cast<void*>(resetGame),reinterpret_cast<void**>(&baseResetGame),0x83485340},
};

// MinHook adapter: production binds the real API; offline tests substitute
// fault-injecting implementations to exercise cleanup control flow without
// the engine.
struct MinHookOps {
    MH_STATUS (*initialize)();
    MH_STATUS (*createHook)(void*,void*,void**);
    MH_STATUS (*queueEnable)(void*);
    MH_STATUS (*applyQueued)();
    MH_STATUS (*queueDisable)(void*);
    MH_STATUS (*removeHook)(void*);
    MH_STATUS (*uninitialize)();
};
static MinHookOps realMinHook{MH_Initialize,MH_CreateHook,MH_QueueEnableHook,MH_ApplyQueued,
                              MH_QueueDisableHook,MH_RemoveHook,MH_Uninitialize};
static MinHookOps* hookOps=&realMinHook;

// Critical unhook phase: no diagnostics, no allocation, every return code
// honored. Residue verdict keys on remove/uninitialize because MinHook's
// RemoveHook fully removes (and restores) even an enabled hook; a failed
// disable/apply alone leaves nothing behind once removes succeed, so those
// statuses become a warning, not a residue. targets keeps exactly the hooks
// still tracked so a later stop can finish the job; hooksReady is cleared by
// the caller: stopping means we no longer route through the detours, while
// residuals are reported through the CleanupFailed state.
static bool uninstallAllHooks(char* warning, size_t warningCapacity) {
    bool residue=false, disableIssues=false;
    if(!targets.empty()){
        for(void* target:targets) if(hookOps->queueDisable(target)!=MH_OK) disableIssues=true;
        if(hookOps->applyQueued()!=MH_OK) disableIssues=true;
        for(size_t i=0;i<targets.size();) {
            // Only an explicit MH_OK counts as removed: anything else keeps
            // the target tracked so a later stop retries it.
            if(hookOps->removeHook(targets[i])==MH_OK)
                targets.erase(targets.begin()+static_cast<std::ptrdiff_t>(i));
            else { ++i; residue=true; }
        }
    }
    if(minhookUp){
        // Keep MinHook alive while tracked hooks remain: a later stop retries
        // their removal first, and an early uninitialize would orphan them.
        if(targets.empty()){
            if(hookOps->uninitialize()==MH_OK) minhookUp=false;
            else residue=true;
        } else residue=true;
    }
    if(disableIssues) snprintf(warning,warningCapacity,"; disable phase reported errors");
    return !residue;
}

void stopAxis() {
    const bool wasActive=hooksReady;
    const bool hadWork=wasActive || !targets.empty() || minhookUp;
    hooksReady=false;
    // Unhook first; nothing in the critical phase above can throw or skip.
    char warning[64]{};
    const bool clean=uninstallAllHooks(warning,sizeof(warning));
    // Rule-state teardown is best effort: clearSnapshot itself refuses to
    // clear while residuals remain, so a still-patched detour keeps enforcing
    // the strict rules instead of silently failing open.
    if(wasActive || hadWork) { try { clearSnapshot(); } catch (...) {} }
    // Diagnostics only from here on.
    try { bs_health_note_hooks(false); } catch (...) {}
    try {
        char detail[192];
        if(!clean){
            snprintf(detail,sizeof(detail),"%zu hook(s) still tracked; MinHook %s",
                     targets.size(),minhookUp?"still initialized":"uninitialized");
            bs_health_set_state(BsState::CleanupFailed,detail);
            logLine("AXIS_CLEANUP_INCOMPLETE",L"");
        } else if(wasActive || hadWork){
            snprintf(detail,sizeof(detail),"%s%s",
                     wasActive?"context destroyed or game reload":"residual cleanup completed",warning);
            bs_health_set_state(BsState::Stopped,detail);
        }
    } catch (...) {}
}

// Rollback owns the failure path: first the guaranteed cleanup, then
// best-effort diagnostics whose own errors must never mask the rollback.
// Failure states are recorded through note_failed_with_cleanup so an
// incomplete cleanup stays primary and the originating cause is preserved
// instead of overwritten. catch(...) boundaries here handle C++ exceptions
// only; Windows access violations are SEH and intentionally not swallowed
// (/EHsc build).
static void rollbackInstall(BsState state,const char* detail){
    try { stopAxis(); } catch (...) {}
    // The primary state must reflect ACTUAL residuals (fact), never depend on
    // stopAxis's own diagnostic write having succeeded.
    char residual[96]{};
    const char* residualSummary=nullptr;
    if(axisHasResiduals()){
        snprintf(residual,sizeof(residual),"%zu hook(s) still tracked; MinHook %s",
                 targets.size(),minhookUp?"still initialized":"uninitialized");
        residualSummary=residual;
    }
    try {
        bs_health_note_failed_with_cleanup(state,detail,residualSummary);
        const char* event = state==BsState::HookCreateFailed ? "AXIS_HOOK_CREATE_FAILED"
            : state==BsState::PrologueMismatch ? "AXIS_PROLOGUE_MISMATCH"
            : state==BsState::MinHookInitFailed ? "AXIS_MINHOOK_INIT_FAILED"
            : "AXIS_HOOK_ENABLE_FAILED";
        logLine(event,L"");
    } catch (...) {}
}

// Full rollback on any failure: no hook stays created or enabled, MinHook is
// torn down, and the health receipt records which step failed and where.
static bool installHooks(unsigned char* base,LogFn logger) {
    logLine=logger;
    char detail[160];
    for(const auto& h:hookTable){
        const unsigned int actual=*reinterpret_cast<unsigned int*>(base+h.offset);
        if(actual!=h.prologue){
            snprintf(detail,sizeof(detail),"hook site rva 0x%zx expected prologue 0x%08x actual 0x%08x",h.offset,h.prologue,actual);
            // Sites may already hold enabled jumps from a previous install;
            // tear it down rather than leaving it half-managed.
            rollbackInstall(BsState::PrologueMismatch,detail);
            return false;
        }
    }
    includes_domain=reinterpret_cast<IncludesDomain>(base+0x1a41e0);
    first_path_plot=reinterpret_cast<FirstPathPlot>(base+0x1a3f80);
    clear_path=reinterpret_cast<ClearPath>(base+0x1a3890);
    current_map=reinterpret_cast<CurrentMap>(base+0x044d40);
    find_trade_path=reinterpret_cast<FindTradePath>(base+0x393bd0);
    push_plot=reinterpret_cast<PushPlot>(base+0x34e680);
    free_path=reinterpret_cast<FreePath>(base+0x9908f0);
    set_index=reinterpret_cast<SetIndex>(base+0x64a6d0);
    getTop=reinterpret_cast<GetTop>(base+0xe690);
    getType=reinterpret_cast<GetType>(base+0xddf0);
    getString=reinterpret_cast<GetString>(base+0x15670);
    resolveHealthQuery(base);
    const MH_STATUS init=hookOps->initialize();
    if(init!=MH_OK && init!=MH_ERROR_ALREADY_INITIALIZED){
        snprintf(detail,sizeof(detail),"MH_Initialize status %d",static_cast<int>(init));
        try {
            bs_health_set_state(BsState::MinHookInitFailed,detail);
            logLine("AXIS_MINHOOK_INIT_FAILED",L"");
        } catch (...) {}
        return false;
    }
    minhookUp=true;
    // Pre-allocate so push_back cannot throw and leave a created hook
    // untracked in the rollback list.
    targets.reserve(sizeof(hookTable)/sizeof(hookTable[0]));
    for(const auto& h:hookTable){
        void* target=base+h.offset;
        const MH_STATUS created=hookOps->createHook(target,h.hook,h.original);
        if(created!=MH_OK){
            snprintf(detail,sizeof(detail),"MH_CreateHook status %d at rva 0x%zx",static_cast<int>(created),h.offset);
            rollbackInstall(BsState::HookCreateFailed,detail);
            return false;
        }
        targets.push_back(target);
    }
    for(void* target:targets){
        const MH_STATUS queued=hookOps->queueEnable(target);
        if(queued!=MH_OK){
            snprintf(detail,sizeof(detail),"MH_QueueEnableHook status %d",static_cast<int>(queued));
            rollbackInstall(BsState::HookEnableFailed,detail);
            return false;
        }
    }
    const MH_STATUS applied=hookOps->applyQueued();
    if(applied!=MH_OK){
        snprintf(detail,sizeof(detail),"MH_ApplyQueued status %d",static_cast<int>(applied));
        rollbackInstall(BsState::HookEnableFailed,detail);
        return false;
    }
    hooksReady=true;
    // Success diagnostics are best effort too: a health/log failure must not
    // unwind out of a successfully installed runtime.
    try {
        bs_health_note_hooks(true);
        bs_health_set_state(BsState::Active,"7 hooks; package-loaded; no external runner");
        logLine("AXIS_READY",L"7 hooks; package-loaded; no external runner");
    } catch (...) {}
    return true;
}

bool startAxis(HMODULE core,const wchar_t* path,LogFn logger) {
    logLine=logger;
    if(hooksReady)return true;
    // Reinstallation is only allowed after cleanup provably completed: a
    // still-patched detour must never be masked by a fresh install. Retry the
    // controlled cleanup once, then refuse while anything remains tracked.
    if(axisHasResiduals()){
        stopAxis();
        if(axisHasResiduals()){
            char detail[160];
            snprintf(detail,sizeof(detail),"reinstall refused: %zu hook(s) still tracked; MinHook %s",
                     targets.size(),minhookUp?"still initialized":"uninitialized");
            try { bs_health_set_state(BsState::CleanupFailed,detail); logLine("AXIS_REINSTALL_REFUSED",L""); } catch (...) {}
            return false;
        }
    }
    try { bs_health_note_attempt(); } catch (...) {}
    if(!core){
        try {
            bs_health_set_state(BsState::BaseModuleMissing,"startAxis called without the original core module");
            logLine("AXIS_REQUIRED_LOAD_ABORTED",L"");
        } catch (...) {}
        return false;
    }
    char detail[160];
    if(!supportedCore(path,detail,sizeof(detail))){
        try {
            bs_health_set_state(BsState::CoreUnsupported,detail);
            logLine("AXIS_UNSUPPORTED_CORE",path);
        } catch (...) {}
        return false;
    }
    return installHooks(reinterpret_cast<unsigned char*>(core),logger);
}

