#include <cassert>
#include <cstdio>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <thread>
#include <windows.h>
#include "axis_runtime.cpp"
#include "loader_core.h"

namespace fs = std::filesystem;
static const wchar_t* REAL_CORE = nullptr;

static void quietLog(const char*,const wchar_t*){}
static unsigned char domain(void* formation,int id){return id==2 && *static_cast<int*>(formation)==2;}
static int allowPath(void*,void*,void*,int,void*,void*){return 1;}
static int denyPath(void*,void*,void*,int,void*,void*){return 0;}

// Lua-state stubs so the setProperty hook is testable without the engine.
static const char* stubKey;
static const char* stubValue;
static int stubTopValue=2;
static int stubTypeValue=4;   // LUA_TSTRING
static int stubTop(void*){return stubTopValue;}
static int stubType(void*,int index){return index==1?4:stubTypeValue;}
static const char* stubString(void*,int index){return index==1?stubKey:stubValue;}
static int stubSetCalls;
static int stubSetProperty(void*){++stubSetCalls;return 0;}

// Immediate-handshake stubs emulating the name-resolved Lua exports and a
// two-argument Lua stack.
static int luaFakeTop=2;
static std::vector<int> queryPushLog;
static int queryPushCalls, queryPushValueIndex, querySetTopCalls, querySetTopLast;
static int queryPushThrowAt=-1;
static void stubQueryPushValue(void*, int index){
    ++queryPushCalls; if(queryPushThrowAt==queryPushCalls)throw std::runtime_error("push boom");
    queryPushValueIndex=index; ++luaFakeTop;}
static void stubQueryPushInteger(void*, int value){
    ++queryPushCalls; if(queryPushThrowAt==queryPushCalls)throw std::runtime_error("push boom");
    queryPushLog.push_back(value); ++luaFakeTop;}
static int stubQueryGetTop(void*){return luaFakeTop;}
static void stubQuerySetTop(void*, int top){++querySetTopCalls;querySetTopLast=top;luaFakeTop=top;}

// LoaderCore injection harness: every original dependency is a stub so gate
// order and rollback can be asserted without the engine.
static int loaderStartCalls, loaderStopCalls, loaderCreateCalls, loaderDestroyCalls;
static bool loaderStartResult;
static void* loaderCreateResult;
static bool loaderCreateThrows, loaderDestroyThrows;
static void* loaderStartArg;
static bool loaderStartStub(void* arg){++loaderStartCalls;loaderStartArg=arg;return loaderStartResult;}
static void* loaderCreateStub(){++loaderCreateCalls;if(loaderCreateThrows)throw std::runtime_error("boom");return loaderCreateResult;}
static void loaderDestroyStub(void*){++loaderDestroyCalls;if(loaderDestroyThrows)throw std::runtime_error("boom");}
static bool loaderResidualFlag;
static bool loaderStopLeavesResidual;   // simulated failed teardown in the stop stub
static bool loaderResidualStub(){return loaderResidualFlag;}
static void loaderStopStub(){++loaderStopCalls;if(loaderStopLeavesResidual)loaderResidualFlag=true;}

// MinHook fault injection through the runtime's adapter layer: every call
// forwards to the real API unless a fault is armed, so cleanup control flow
// is exercised against genuine MinHook state.
static MinHookOps probeRealOps{MH_Initialize,MH_CreateHook,MH_QueueEnableHook,MH_ApplyQueued,
                               MH_QueueDisableHook,MH_RemoveHook,MH_Uninitialize};
static int injCreateIndex,injRemoveIndex;
static int injFailCreateAt,injFailRemoveAt;
static bool injFailQueueEnable,injFailApply,injFailDisable,injFailUninit;
static MH_STATUS injInitialize(){return probeRealOps.initialize();}
static MH_STATUS injCreate(void* t,void* d,void** o){if(injFailCreateAt==injCreateIndex++)return MH_ERROR_MEMORY_ALLOC;return probeRealOps.createHook(t,d,o);}
static MH_STATUS injQueueEnable(void* t){if(injFailQueueEnable)return MH_ERROR_NOT_CREATED;return probeRealOps.queueEnable(t);}
static MH_STATUS injApply(){if(injFailApply)return MH_ERROR_NOT_INITIALIZED;return probeRealOps.applyQueued();}
static MH_STATUS injDisable(void* t){if(injFailDisable)return MH_ERROR_NOT_CREATED;return probeRealOps.queueDisable(t);}
static MH_STATUS injRemove(void* t){if(injFailRemoveAt==injRemoveIndex++)return MH_ERROR_NOT_CREATED;return probeRealOps.removeHook(t);}
static MH_STATUS injUninit(){if(injFailUninit)return MH_ERROR_NOT_INITIALIZED;return probeRealOps.uninitialize();}
static MinHookOps injectableOps{injInitialize,injCreate,injQueueEnable,injApply,injDisable,injRemove,injUninit};
static void resetInjection(){injFailCreateAt=injFailRemoveAt=-1;injFailQueueEnable=injFailApply=injFailDisable=injFailUninit=false;injCreateIndex=injRemoveIndex=0;}

// Throwing logger for diagnostic-isolation tests.
static int throwingLogCalls;
static void throwingLog(const char*,const wchar_t*){++throwingLogCalls;throw std::runtime_error("log boom");}
static int stubResetCalls;
static uintptr_t stubResetGame(void*){++stubResetCalls;return 42;}

static std::string receiptContents(){
    std::ifstream input(bs_health_receipt_path(),std::ios::binary);
    return std::string((std::istreambuf_iterator<char>(input)),std::istreambuf_iterator<char>());
}

int wmain(int argc, wchar_t** argv){
    assert(argc == 2); REAL_CORE = argv[1];
    logLine=quietLog;
    includes_domain=domain; original_path=allowPath; original_trade=allowPath;
    const char* payload="110,25,110,24,111,26;110,24,109,23,110,25;111,26,110,25,111,27";
    assert(publishPayload(payload));
    const Snapshot* first=read_snapshot();
    assert(first && first->count==3);
    assert(publishPayload("10,9,10,9,10,9;11,9,11,9,11,9"));
    const Snapshot* broken=read_snapshot();
    assert(closes_edge(broken,plot_key(9,9),plot_key(10,9)));
    assert(closes_edge(broken,plot_key(10,9),plot_key(11,9)));
    assert(!closes_edge(broken,plot_key(10,9),plot_key(9,9)));
    assert(!closes_edge(broken,plot_key(10,9),plot_key(10,9)));
    assert(publishPayload(payload));
    assert(!closes_edge(first,plot_key(109,23),plot_key(110,24)));
    assert(!closes_edge(first,plot_key(110,24),plot_key(110,25)));
    assert(!closes_edge(first,plot_key(111,26),plot_key(111,27)));
    assert(!closes_edge(first,plot_key(111,27),plot_key(111,26)));
    assert(closes_edge(first,plot_key(109,25),plot_key(110,25)));
    assert(closes_edge(first,plot_key(110,25),plot_key(111,25)));
    assert(!closes_edge(first,plot_key(3,4),plot_key(4,4)));
    assert(!closes_edge(first,plot_key(110,25),plot_key(110,25)));
    alignas(8) unsigned char from[64]{},to[64]{};
    reinterpret_cast<short*>(from+0x30)[0]=109;
    reinterpret_cast<short*>(from+0x30)[1]=25;
    reinterpret_cast<short*>(to+0x30)[0]=110;
    reinterpret_cast<short*>(to+0x30)[1]=25;
    int land=2,sea=1;
    assert(check_path(nullptr,from,to,0,&land,nullptr)==0);
    assert(check_path(nullptr,from,to,0,&sea,nullptr)==1);
    assert(check_trade(nullptr,from,to,0,nullptr,nullptr)==0);
    original_path=denyPath;
    assert(check_path(nullptr,from,to,0,&sea,nullptr)==0);
    for(auto invalid:{"1,2,3", "-1,2,3,4,5,6", "32768,2,3,4,5,6", "1,2,3,4,5,6;", "1,2,3,4,5,6;1,2,7,8,9,10", "1,2,3,4,5,6junk"}){
        assert(!publishPayload(invalid));assert(read_snapshot()==first);
    }
    std::atomic<bool> done{false};
    std::thread reader([&]{while(!done.load()){auto s=read_snapshot();if(s){assert(s->count==3);assert(closes_edge(s,plot_key(109,25),plot_key(110,25)));}}});
    for(int i=0;i<10000;++i){assert(publishPayload(""));assert(publishPayload(payload));}
    done=true;reader.join();
    clearSnapshot();assert(read_snapshot()==nullptr);
    assert(first->count==3); // Old snapshots remain valid for in-flight workers.
    assert(publishPayload(payload));assert(read_snapshot()==first);

    // ---- Batch 1: native health receipt -----------------------------------
    // Before any startAxis the runtime must not look active, even though the
    // rules data itself already publishes fine.
    BsHealth health=bs_health_query();
    assert(health.state==BsState::NotInitialized);
    assert(!health.hooksReady);
    assert(health.pid==GetCurrentProcessId());
    assert(health.bootId[0]!=0 && strlen(health.bootId)==32);
    assert(health.publishOk>=1 && health.lastPublishOk);
    assert(health.lastDeckCount==3);

    const fs::path receiptDir=fs::temp_directory_path()/"bs-health-receipt-test";
    fs::create_directories(receiptDir);
    bs_health_set_receipt_path(receiptDir.c_str());
    bs_health_note_probe("seed");  // force a receipt write into the test dir
    std::string receipt=receiptContents();
    assert(receipt.find("\"schema\":1")!=std::string::npos);
    assert(receipt.find(health.bootId)!=std::string::npos);
    assert(receipt.find(std::to_string(GetCurrentProcessId()))!=std::string::npos);
    assert(receipt.find("\"state\":\"NOT_INITIALIZED\"")!=std::string::npos);
    assert(receipt.find("\"hooksReady\":false")!=std::string::npos);

    // ---- Batch 1: fingerprint gating (evidence-backed) ---------------------
    char detail[160];
    assert(!supportedCore(L"Z:\\definitely\\missing\\core.dll",detail,sizeof(detail)));
    assert(strstr(detail,"status error"));
    const fs::path workDir=fs::temp_directory_path()/"bs-supported-core-test";
    fs::create_directories(workDir);
    const fs::path oversized=workDir/"oversized.dll";
    { std::ofstream out(oversized,std::ios::binary); out.put('X'); }
    fs::resize_file(oversized,64ull*1024*1024+1);
    assert(!supportedCore(oversized.c_str(),detail,sizeof(detail)));
    assert(strstr(detail,"exceeds supported maximum"));
    const fs::path wrongHash=workDir/"wrong.dll";
    { std::ofstream out(wrongHash,std::ios::binary); out<<std::string(4096,'A'); }
    assert(!supportedCore(wrongHash.c_str(),detail,sizeof(detail)));
    assert(strstr(detail,"fingerprint mismatch") && strstr(detail,"actual sha256 starts"));
    const fs::path tiny=workDir/"tiny.dll";
    { std::ofstream out(tiny,std::ios::binary); out<<"MZ"; }
    assert(!supportedCore(tiny.c_str(),detail,sizeof(detail)));
    assert(strstr(detail,"too small"));
    if(fs::exists(REAL_CORE)){
        assert(supportedCore(REAL_CORE,detail,sizeof(detail)));
    }else{
        std::cout<<"NOTE: local original core not found, positive fingerprint case skipped\n";
    }

    // ---- Batch 1: start/stop rollback on a fake module ---------------------
    // MinHook refuses non-executable target pages (MH_ERROR_NOT_EXECUTABLE),
    // so the fake module needs an RWX mapping. Each hook site carries the real
    // 4-byte prologue plus nop padding: this fixture drives MinHook's
    // install/teardown CONTROL FLOW only -- no game code executes through it
    // and the 4-byte prologues by themselves are not complete instructions.
    unsigned char* fakeModule=static_cast<unsigned char*>(VirtualAlloc(nullptr,0x800000,MEM_COMMIT,PAGE_EXECUTE_READWRITE));
    assert(fakeModule);
    for(const auto& h:hookTable){
        *reinterpret_cast<unsigned int*>(fakeModule+h.offset)=h.prologue;
        memset(fakeModule+h.offset+4,0x90,32);
    }
    *reinterpret_cast<unsigned int*>(fakeModule+0x393840)=0xdeadbeef; // corrupt the trade hook site
    if(fs::exists(REAL_CORE)){
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        health=bs_health_query();
        assert(health.state==BsState::PrologueMismatch);
        assert(health.state!=BsState::Active && !health.hooksReady);
        assert(strstr(health.lastErrorDetail,"rva 0x393840"));
        assert(strstr(health.lastErrorDetail,"expected prologue 0x56555340"));
        assert(strstr(health.lastErrorDetail,"actual 0xdeadbeef"));
        assert(!hooksReady && targets.empty() && !minhookUp);
        // A failed start must not disturb already published rules data.
        assert(read_snapshot()==first && read_snapshot()->count==3);

        // Null module and unsupported file each fail closed with distinct states.
        assert(!startAxis(nullptr,REAL_CORE,quietLog));
        assert(bs_health_query().state==BsState::BaseModuleMissing);
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),wrongHash.c_str(),quietLog));
        health=bs_health_query();
        assert(health.state==BsState::CoreUnsupported);
        assert(strstr(health.lastErrorDetail,"fingerprint mismatch"));

        // Repair the site: full install/stop/restart lifecycle offline.
        *reinterpret_cast<unsigned int*>(fakeModule+0x393840)=0x56555340;
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        health=bs_health_query();
        assert(health.state==BsState::Active && health.hooksReady && hooksReady);
        assert(receiptContents().find("\"state\":\"ACTIVE\"")!=std::string::npos);
        assert(receiptContents().find("\"hooksReady\":true")!=std::string::npos);
        assert(health.startAttempts==4); // mismatch + null + unsupported + success
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog)); // idempotent
        assert(bs_health_query().startAttempts==4);
        stopAxis();
        health=bs_health_query();
        assert(health.state==BsState::Stopped && !health.hooksReady && !hooksReady);
        assert(targets.empty() && !minhookUp);
        stopAxis(); // repeated stop stays clean
        assert(!hooksReady && targets.empty() && !minhookUp);
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog)); // reload path
        assert(bs_health_query().state==BsState::Active);
        stopAxis();

        // Sites patched with enabled jumps must fail closed on re-install
        // instead of double-hooking (partial-failure rollback evidence).
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(*reinterpret_cast<unsigned int*>(fakeModule+0x1a9f00)!=hookTable[0].prologue);
        const unsigned int attemptsBefore=bs_health_query().startAttempts;
        assert(!installHooks(fakeModule,quietLog)); // prologue guard sees the jump
        health=bs_health_query();
        assert(health.state==BsState::PrologueMismatch && !hooksReady && !minhookUp);
        assert(targets.empty());
        assert(health.startAttempts==attemptsBefore); // installHooks itself is not a start attempt
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog)); // recoverable
        assert(bs_health_query().startAttempts==attemptsBefore+1);
        stopAxis();

        // ---- Second pass P1: MinHook failures injected via the adapter ----
        // The fixture below only drives MinHook install/teardown control
        // flow against the fake module; no game code is executed through it,
        // and the 4-byte prologues alone are not complete instructions.
        hookOps=&injectableOps;

        resetInjection();
        injFailCreateAt=3; // fourth hook (rva 0x393840) fails to create
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        health=bs_health_query();
        assert(health.state==BsState::HookCreateFailed);
        assert(strstr(health.lastErrorDetail,"rva 0x393840"));
        assert(!hooksReady && targets.empty() && !minhookUp); // rollback fully clean
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));stopAxis();

        resetInjection();
        injFailQueueEnable=true;
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        health=bs_health_query();
        assert(health.state==BsState::HookEnableFailed);
        assert(targets.empty() && !minhookUp && !hooksReady);
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));stopAxis();

        resetInjection();
        injFailApply=true;
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        health=bs_health_query();
        assert(health.state==BsState::HookEnableFailed);
        assert(targets.empty() && !minhookUp && !hooksReady);
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));

        // Disable errors during stop: with real MinHook, RemoveHook fully
        // removes enabled hooks, so a failed disable alone leaves no residue;
        // the stop completes with a warning instead of a false CleanupFailed.
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        injFailDisable=true;
        stopAxis();
        health=bs_health_query();
        assert(health.state==BsState::Stopped);
        assert(targets.empty() && !minhookUp && !hooksReady);
        assert(strstr(health.lastErrorDetail,"disable phase reported errors"));

        // Remove failure mid-list: exactly the failed hook stays tracked.
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        injFailRemoveAt=2;
        stopAxis();
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);
        assert(targets.size()==1 && minhookUp);
        assert(strstr(health.lastErrorDetail,"1 hook(s) still tracked"));
        injFailRemoveAt=-1;
        stopAxis();
        assert(bs_health_query().state==BsState::Stopped && targets.empty() && !minhookUp);

        // Uninitialize failure: hooks all removed, MinHook stays initialized.
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        injFailUninit=true;
        stopAxis();
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);
        assert(targets.empty() && minhookUp);
        assert(strstr(health.lastErrorDetail,"MinHook still initialized"));
        injFailUninit=false;
        stopAxis();
        assert(bs_health_query().state==BsState::Stopped && !minhookUp && targets.empty());
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        stopAxis();

        // ---- Third pass 16:50: an ACTIVE install is not a residual ---------
        // Normal lifecycle regression guard: while hooks are legitimately
        // installed, resetGame must clear the old map and a new map must
        // publish; the loader-facing residual check must stay false.
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(!axisHasResiduals());                 // active hooks are normal
        assert(publishPayload("110,25,110,24,111,26"));
        assert(read_snapshot() && read_snapshot()->count==1);
        baseResetGame=stubResetGame;
        assert(resetGame(nullptr)==42);              // original reset still ran
        assert(read_snapshot()==nullptr);            // old map cleared while ACTIVE
        assert(bs_health_query().lastDeckCount==0);
        assert(publishPayload("111,26,110,25,111,27")); // new map publishes fresh
        assert(read_snapshot() && read_snapshot()->count==1);
        stopAxis();                                  // clean stop still works
        assert(bs_health_query().state==BsState::Stopped);
        assert(!axisHasResiduals());

        // ---- Third pass: create failure + remove failure (compound) --------
        // CleanupFailed must stay primary, the originating cause preserved,
        // the residual owned; reinstall is refused until a retry completes
        // the cleanup (expected behavior, mirrors Codex's reproduction).
        resetInjection();
        injFailCreateAt=3; injFailRemoveAt=1;
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(targets.size()==1 && minhookUp);
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);                      // not overwritten
        assert(strstr(health.lastErrorDetail,"1 hook(s) still tracked"));  // residual kept visible
        assert(strstr(health.lastErrorDetail,"original failure HOOK_CREATE_FAILED"));
        assert(strstr(health.lastErrorDetail,"MH_CreateHook"));
        assert(strcmp(health.lastInstallFailure,"HOOK_CREATE_FAILED")==0);
        resetInjection(); injFailRemoveAt=0; // retry cleanup still fails on the residual
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(targets.size()==1 && minhookUp);
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);
        assert(strstr(health.lastErrorDetail,"reinstall refused"));
        assert(strcmp(health.lastInstallFailure,"HOOK_CREATE_FAILED")==0); // cause still remembered
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog)); // clean → allowed
        stopAxis();

        // Fact source: arm the set_state fault so stopAxis's own CleanupFailed
        // write throws; the primary state must still come out CleanupFailed
        // because rollbackInstall reports ACTUAL residuals.
        resetInjection();
        injFailCreateAt=3; injFailRemoveAt=1;
        bs_health_inject_fault(1u);
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        bs_health_inject_fault(0);
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);  // fact, not diagnostic luck
        assert(strstr(health.lastErrorDetail,"original failure HOOK_CREATE_FAILED"));
        assert(strstr(health.lastErrorDetail,"1 hook(s) still tracked"));
        assert(targets.size()==1 && minhookUp);
        resetInjection(); injFailRemoveAt=0;
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog)); // refused while dirty
        resetInjection(); stopAxis();
        assert(targets.empty() && !minhookUp);

        // ---- Third pass: patched detour survives, strict snapshot must too --
        resetInjection();
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(publishPayload("110,25,110,24,111,26"));
        const Snapshot* strictSnapshot=read_snapshot();
        assert(strictSnapshot && strictSnapshot->count==1);
        assert(closes_edge(strictSnapshot,plot_key(109,25),plot_key(110,25)));
        resetInjection();
        injFailDisable=true; injFailApply=true; injFailRemoveAt=0;
        stopAxis();
        assert(targets.size()==1 && minhookUp && !hooksReady);
        // the path-hook site still holds a jump: the detour may still run
        assert(*reinterpret_cast<unsigned int*>(fakeModule+hookTable[0].offset)!=hookTable[0].prologue);
        // therefore the strict rules stay live (fail closed), not cleared
        assert(read_snapshot()==strictSnapshot);
        assert(closes_edge(read_snapshot(),plot_key(109,25),plot_key(110,25)));
        health=bs_health_query();
        assert(health.state==BsState::CleanupFailed);
        assert(strstr(health.lastErrorDetail,"1 hook(s) still tracked"));
        // reinstall refused while the retry still cannot finish
        injFailRemoveAt=injRemoveIndex;
        assert(!startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        assert(targets.size()==1 && minhookUp);
        // once cleanup provably completes: snapshot clears, reinstall allowed
        resetInjection();
        stopAxis();
        assert(targets.empty() && !minhookUp);
        assert(read_snapshot()==nullptr);
        assert(bs_health_query().state==BsState::Stopped);
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        stopAxis();

        hookOps=&realMinHook; // restore the production binding
    }else{
        std::cout<<"NOTE: local original core not found, startAxis lifecycle cases skipped\n";
    }

    // ---- Batch 1: payload limits and rejection accounting ------------------
    const std::string huge(512001,'1');
    assert(!publishPayload(huge.c_str()));
    assert(read_snapshot()==nullptr || read_snapshot()==first);
    health=bs_health_query();
    assert(!health.lastPublishOk && strcmp(health.lastRejectReason,"OVERSIZE")==0);
    assert(health.publishRejected>=1);

    const size_t savedLimit=retainedBytesLimit;
    retainedBytesLimit=retainedBytes+sizeof(Snapshot); // room for header only
    assert(!publishPayload("200,200,201,200,202,200"));
    health=bs_health_query();
    assert(strcmp(health.lastRejectReason,"LIMIT")==0 && !health.lastPublishOk);
    retainedBytesLimit=savedLimit;

    assert(publishPayload("32767,32767,0,0,1,1")); // boundary coordinate accepted
    assert(read_snapshot()->count==1);
    assert(publishPayload(payload));assert(read_snapshot()==first); // deduped snapshot reuse

    // ---- Batch 1: setProperty hook with Lua-state stubs --------------------
    getTop=stubTop; getType=stubType; getString=stubString; baseSetProperty=stubSetProperty;
    stubSetCalls=0;
    stubKey="BS_BridgeHealth_Probe_v1"; stubValue="nonce-abc-123";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==1); // original setter still ran
    health=bs_health_query();
    assert(health.probes>=1 && strcmp(health.lastProbe,"nonce-abc-123")==0);
    receipt=receiptContents();
    assert(receipt.find("nonce-abc-123")!=std::string::npos); // echoed by native only
    assert(receipt.find(health.bootId)!=std::string::npos);

    stubKey="BS_NativeBridgeAxis_v1"; stubValue=payload;
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(read_snapshot()==first && stubSetCalls==2);
    stubValue="9,9,9";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    health=bs_health_query();
    assert(strcmp(health.lastRejectReason,"MALFORMED")==0 && !health.lastPublishOk);
    assert(read_snapshot()==first && stubSetCalls==3);
    stubKey="SomeOtherProperty"; stubValue="value";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==4); // unrelated keys pass through untouched

    // ---- Review: identical valid payload after a rejection restores health ----
    const size_t snapshotCount=snapshots.size();
    stubKey="BS_NativeBridgeAxis_v1"; stubValue="77,88,99";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(!bs_health_query().lastPublishOk);
    stubValue=payload; // identical to the last valid payload
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    health=bs_health_query();
    assert(health.lastPublishOk && health.lastRejectReason[0]==0);
    assert(read_snapshot()==first);
    assert(snapshots.size()==snapshotCount); // no extra snapshot created
    assert(stubSetCalls==6); // both calls still passed through

    // ---- Review: hostile nonce stays valid JSON, truncated, and fresh --------
    stubKey="BS_BridgeHealth_Probe_v1"; stubValue="n\"o\\t\r\n\001end"; // \001: fixed-width octal, not \x01e
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    receipt=receiptContents();
    assert(receipt.find("n\\\"o\\\\t\\r\\n\\u0001end")!=std::string::npos); // escaped form
    assert(receipt.find('\x01')==std::string::npos);
    assert(receipt.find("\r\n")==std::string::npos); // no raw control pair injected
    stubValue="qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqX"; // 64 q + X
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    receipt=receiptContents();
    assert(receipt.find(std::string(63,'q'))!=std::string::npos);   // truncated to 63
    assert(receipt.find(std::string(64,'q'))==std::string::npos);
    assert(receipt.find('X')==std::string::npos || receipt.find("qX")==std::string::npos);
    // Freshness: a newer challenge replaces the older nonce entirely, so a
    // stale receipt cannot satisfy a fresh challenge.
    stubValue="fresh-A";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(receiptContents().find("fresh-A")!=std::string::npos);
    stubValue="fresh-B";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    receipt=receiptContents();
    assert(receipt.find("fresh-B")!=std::string::npos);
    assert(receipt.find("fresh-A")==std::string::npos);

    // ---- Review: loader lifecycle with injected callbacks -------------------
    LoaderCore env{};
    env.log=quietLog;
    env.startAxis=loaderStartStub; env.stopAxis=loaderStopStub; env.axisArg=reinterpret_cast<void*>(5);
    env.createContext=loaderCreateStub; env.destroyContext=loaderDestroyStub;
    loaderStartResult=true; loaderCreateResult=reinterpret_cast<void*>(77);
    loaderStartCalls=loaderStopCalls=loaderCreateCalls=loaderDestroyCalls=0;

    env.createContext=nullptr; // create export missing: gate before axis and context
    assert(loader_create_context(env)==nullptr);
    assert(loaderStartCalls==0 && loaderCreateCalls==0);
    assert(bs_health_query().state==BsState::BaseExportsMissing);

    env.createContext=loaderCreateStub; env.destroyContext=nullptr; // destroy export missing
    assert(loader_create_context(env)==nullptr);
    assert(loaderStartCalls==0 && loaderCreateCalls==0);
    assert(bs_health_query().state==BsState::BaseExportsMissing);
    env.destroyContext=loaderDestroyStub;

    loaderStartResult=false; // axis refused: original context never invoked
    assert(loader_create_context(env)==nullptr);
    assert(loaderStartCalls==1 && loaderStartArg==reinterpret_cast<void*>(5) && loaderCreateCalls==0);

    loaderStartResult=true; loaderCreateResult=nullptr; // null context: axis rolled back
    assert(loader_create_context(env)==nullptr);
    assert(loaderStopCalls==1);
    assert(bs_health_query().state==BsState::ContextEntryFailed);

    loaderCreateThrows=true; // throwing context: axis rolled back, failure recorded
    assert(loader_create_context(env)==nullptr);
    assert(loaderStopCalls==2);
    assert(bs_health_query().state==BsState::ContextEntryFailed);

    loaderCreateThrows=false; loaderCreateResult=reinterpret_cast<void*>(77); // success
    assert(loader_create_context(env)==reinterpret_cast<void*>(77));
    assert(loaderStopCalls==2); // no spurious teardown

    loaderDestroyThrows=true; // throwing destroy still tears the axis down
    loader_destroy_context(env,reinterpret_cast<void*>(77));
    assert(loaderDestroyCalls==1 && loaderStopCalls==3);
    loaderDestroyThrows=false;
    loader_destroy_context(env,reinterpret_cast<void*>(77));
    assert(loaderDestroyCalls==2 && loaderStopCalls==4);

    // ---- Third pass: loader gates under compound faults --------------------
    // Residual detours refuse a new context before any start/create attempt.
    env.residualHooks=loaderResidualStub;
    loaderResidualFlag=true;
    {
        const int gateStart=loaderStartCalls,gateCreate=loaderCreateCalls,gateStop=loaderStopCalls;
        assert(loader_create_context(env)==nullptr);
        assert(loaderStartCalls==gateStart && loaderCreateCalls==gateCreate && loaderStopCalls==gateStop);
    }
    loaderResidualFlag=false;
    loaderStopLeavesResidual=false;

    // Context failure with ACTUAL residuals: the gate passes (no residual
    // yet), createContext fails, and the simulated failed teardown flips the
    // residual flag — the composition must key off that FACT.
    loaderStartResult=true; loaderCreateResult=nullptr;
    loaderStopLeavesResidual=true;               // stop fails → residual appears
    bs_health_set_state(BsState::Active,"");     // prior state must not matter
    assert(loader_create_context(env)==nullptr);
    health=bs_health_query();
    assert(health.state==BsState::CleanupFailed);                          // fact-driven
    assert(strstr(health.lastErrorDetail,"cleanup incomplete after context failure"));
    assert(strstr(health.lastErrorDetail,"original failure CONTEXT_ENTRY_FAILED"));
    assert(strcmp(health.lastInstallFailure,"CONTEXT_ENTRY_FAILED")==0);
    // While the residual now exists, the gate refuses the next attempt outright.
    {
        const int beforeCreate=loaderCreateCalls;
        assert(loader_create_context(env)==nullptr);
        assert(loaderCreateCalls==beforeCreate);  // gate refused: no create attempt
    }
    loaderStopLeavesResidual=false;
    loaderResidualFlag=false;

    // Throwing create with a failed teardown composes the same way.
    loaderCreateThrows=true;
    loaderStopLeavesResidual=true;               // teardown fails again
    bs_health_set_state(BsState::Active,"");
    assert(loader_create_context(env)==nullptr);
    health=bs_health_query();
    assert(health.state==BsState::CleanupFailed);
    assert(strstr(health.lastErrorDetail,"original failure CONTEXT_ENTRY_FAILED"));
    loaderCreateThrows=false;
    loaderStopLeavesResidual=false;
    loaderResidualFlag=false;

    // Belt: no residual callback (probe build) — a pending CleanupFailed from
    // the runtime stays primary and the cause is appended.
    env.residualHooks=nullptr;
    bs_health_set_state(BsState::CleanupFailed,"1 hook(s) still tracked; MinHook still initialized");
    loaderCreateResult=nullptr;
    assert(loader_create_context(env)==nullptr);
    health=bs_health_query();
    assert(health.state==BsState::CleanupFailed);
    assert(strstr(health.lastErrorDetail,"1 hook(s) still tracked"));
    assert(strstr(health.lastErrorDetail,"original failure CONTEXT_ENTRY_FAILED"));

    // Without residuals the context failure state is set directly.
    env.residualHooks=loaderResidualStub;
    bs_health_set_state(BsState::Active,"");
    loaderCreateResult=nullptr;
    assert(loader_create_context(env)==nullptr);
    health=bs_health_query();
    assert(health.state==BsState::ContextEntryFailed);
    assert(strcmp(health.lastInstallFailure,"CONTEXT_ENTRY_FAILED")==0);
    env.residualHooks=nullptr;

    // ---- Batch2 A: immediate native health handshake (offline stubs) -------
    // These stubs emulate the name-resolved Lua exports and a 2-argument Lua
    // stack; real engine calling convention and the Game.SetProperty Lua
    // binding of multi-value C returns remain live-unverified.
    luaFakeTop=2; queryPushLog.clear(); queryPushCalls=0; queryPushValueIndex=-99;
    querySetTopCalls=0; querySetTopLast=-99; queryPushThrowAt=-1;
    queryPushValue=stubQueryPushValue; queryPushInteger=stubQueryPushInteger;
    queryGetTop=stubQueryGetTop; querySetTop=stubQuerySetTop;
    healthQueryReady=true;
    assert(publishPayload("120,30,119,30,121,30"));   // deterministic publish facts
    const BsHealth beforeQuery=bs_health_query();
    const unsigned int queriesBefore=beforeQuery.queries;
    stubKey="BS_BridgeHealth_Query_v1"; stubValue="query-nonce-1";
    const int setBeforeQuery=stubSetCalls;
    assert(setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)))==HEALTH_QUERY_RESULTS);
    assert(stubSetCalls==setBeforeQuery);              // original setter skipped, no ack stored
    assert(queryPushValueIndex==2);                    // echo of THIS call's argument
    assert(queryPushLog.size()==5);
    assert(queryPushLog[0]==HEALTH_QUERY_PROTOCOL);
    assert(queryPushLog[1]==static_cast<int>(hooksReady ? BsState::Active : BsState::Stopped));
    assert(queryPushLog[2]==(beforeQuery.lastPublishOk?1:0));
    assert(queryPushLog[3]==static_cast<int>(read_snapshot()->count));
    assert(queryPushLog[4]==static_cast<int>(beforeQuery.publishRejected));
    assert(luaFakeTop==2+HEALTH_QUERY_RESULTS);        // args + six results on the stack
    assert(bs_health_query().queries==queriesBefore+1);

    // Unresolved reserved queries must not persist anything through the original setter.
    healthQueryReady=false;
    luaFakeTop=2;
    assert(setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)))==0);
    assert(stubSetCalls==setBeforeQuery);
    assert(luaFakeTop==2);                              // nothing pushed
    assert(bs_health_query().queries==queriesBefore+1);
    healthQueryReady=true;

    // Invalid reserved queries return no values and do not persist.
    stubTopValue=3;
    assert(setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)))==0);
    assert(stubSetCalls==setBeforeQuery);
    stubTopValue=2;
    stubTypeValue=3;                                    // non-string value
    assert(setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)))==0);
    assert(stubSetCalls==setBeforeQuery);
    stubTypeValue=4;

    // A throwing push restores the stack baseline without persisting a query.
    queryPushThrowAt=3; luaFakeTop=2; queryPushLog.clear(); queryPushCalls=0; querySetTopCalls=0;
    assert(setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)))==0);
    assert(stubSetCalls==setBeforeQuery);
    assert(querySetTopCalls==1 && querySetTopLast==2);
    assert(luaFakeTop==2);
    queryPushThrowAt=-1;

    // Unrelated keys keep their original behavior (probe still recorded).
    stubKey="BS_BridgeHealth_Probe_v1"; stubValue="q-probe";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==setBeforeQuery+1);
    assert(strcmp(bs_health_query().lastProbe,"q-probe")==0);

    // Name resolution against a non-PE fake module records a clear boundary.
    resolveHealthQuery(fakeModule);
    assert(!healthQueryReady);
    health=bs_health_query();
    assert(strcmp(health.healthQuery,"unresolved")==0);
    assert(strstr(health.lastErrorDetail,"lua_pushvalue"));
    // restore the stub interface for later sections
    queryPushValue=stubQueryPushValue; queryPushInteger=stubQueryPushInteger;
    queryGetTop=stubQueryGetTop; querySetTop=stubQuerySetTop;
    healthQueryReady=true;

    // Restore the snapshot expected by the following diagnostics-isolation case.
    assert(publishPayload(payload));
    first=read_snapshot();

    // ---- Second pass P2: diagnostics failures never block original calls ----
    // A throwing logger plus injected health faults must not stop the original
    // setter/reset from running, and must not corrupt the published snapshot.
    // (The health API is plain C++ precisely so /EHsc cannot assume it never
    // throws and elide these isolation boundaries.)
    logLine=throwingLog;
    bs_health_inject_fault(2u|8u|4u); // note_publish / note_probe / note_clear throw
    throwingLogCalls=0;
    const int setBefore=stubSetCalls;
    stubKey="BS_NativeBridgeAxis_v1"; stubValue="9,9,9"; // malformed
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==setBefore+1); // original setter still ran
    stubValue=payload; // valid; identical, no health note needed
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==setBefore+2);
    assert(read_snapshot()==first); // critical snapshot work unaffected
    stubKey="BS_BridgeHealth_Probe_v1"; stubValue="probe-x";
    setProperty(static_cast<void*>(reinterpret_cast<char*>(&stubKey)));
    assert(stubSetCalls==setBefore+3);
    assert(throwingLogCalls>=2); // payload-failure and probe logging were exercised
    baseResetGame=stubResetGame;
    stubResetCalls=0;
    assert(resetGame(nullptr)==42); // original reset still ran
    assert(stubResetCalls==1);
    assert(throwingLogCalls>=3); // clear-failure logging exercised too
    bs_health_inject_fault(1u); // set_state throwing must not escape stopAxis
    if(fs::exists(REAL_CORE)){
        assert(startAxis(reinterpret_cast<HMODULE>(fakeModule),REAL_CORE,quietLog));
        stopAxis(); // wasActive path: Stopped-state write throws, is caught
    }else{
        stopAxis();
    }
    bs_health_inject_fault(0);
    assert(stubResetCalls==1 && stubSetCalls==setBefore+3); // no extra originals
    logLine=quietLog;

    if(fakeModule) VirtualFree(fakeModule,0,MEM_RELEASE);
    std::cout << "PASS: endpoint traversal, side entry/exit, naval exemption, native denial preservation, malformed payloads, 10000 concurrent publication cycles, lifecycle reset; "
              << "health receipt content, fingerprint gating (missing/oversized/wrong/tiny), prologue-mismatch rollback with diagnostics, null-module and unsupported-core fail-closed states, offline install/stop/restart lifecycle, idempotent repeated start/stop, patched-site reinstall fail-closed, oversize and retained-limit rejections, boundary coordinates, health probe echo through setProperty, identical-payload health recovery, hostile-nonce JSON escaping with truncation and receipt freshness, injected loader gates and rollback on null/throwing create, throwing destroy, missing exports; "
              << "adapter-injected MinHook failures (create/queue-enable/apply with clean rollback, disable/remove/uninitialize with CleanupFailed residual ownership and retry-stop recovery), diagnostic isolation under throwing logger and health faults (original setter/reset and snapshot unaffected); "
              << "compound faults (create+remove keeps CleanupFailed primary with cause preserved and reinstall refused until retry cleanup completes; surviving patched detour keeps the strict snapshot enforcing, cleared only after provable cleanup; loader residual gate refuses new contexts; loader context failures do not mask pending cleanup; ACTIVE lifecycle is not a residual — resetGame clears the old map and a new map publishes; cleanup primary state derives from actual residuals even when diagnostic writes fail)\n";
}
