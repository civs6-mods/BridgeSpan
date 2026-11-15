// Native health receipt shared by the loader and the axis runtime.
// The receipt is produced by native lifecycle events only: state transitions,
// payload publication results and Lua challenge nonces. Nothing in the Lua
// sandbox can write this record, and consumers must check its content
// (state + bootId + echoed nonce), never mere file existence.
#pragma once
#include <windows.h>

enum class BsState : int {
    NotInitialized = 0,   // DLL loaded, no context request yet
    Active,               // hooks installed and enabled
    Stopped,              // stopAxis ran (context destroyed or reload)
    BaseModuleMissing,    // loader: original GameCore DLL failed to load
    BaseExportsMissing,   // loader: context entry points absent
    CoreUnsupported,      // fingerprint check failed before hooking
    PrologueMismatch,     // hook-site offset guard failed before hooking
    ContextEntryFailed,   // exception escaped the original context entry point
    MinHookInitFailed,    // MinHook rejected initialization
    HookCreateFailed,     // rollback performed, no hooks left enabled
    HookEnableFailed,     // rollback performed, no hooks left enabled
    CleanupFailed,        // stop could not remove/disable every hook; residual tracked
};

struct BsHealth {
    BsState state;
    unsigned int startAttempts;    // startAxis invocations that had to work
    unsigned int publishOk;        // distinct payloads accepted
    unsigned int publishRejected;  // payloads rejected (malformed/limit/...)
    unsigned int probes;           // Lua challenge properties observed
    unsigned int queries;          // immediate handshake queries answered natively
    unsigned int lastDeckCount;    // decks in the newest published snapshot
    bool lastPublishOk;            // newest distinct payload accepted
    bool hooksReady;               // mirrors axis runtime flag
    char lastRejectReason[24];     // OVERSIZE/MALFORMED/DUPLICATE/LIMIT/EXCEPTION
    char lastErrorDetail[160];     // offsets, expected/actual bytes, hash prefix, error codes
    char lastInstallFailure[40];   // failure tag that hit a cleanup failure (e.g. HOOK_CREATE_FAILED)
    char healthQuery[24];          // ready | unresolved | disabled (name-resolved Lua query exports)
    char lastProbe[64];            // most recent challenge nonce, truncated
    char bootId[33];               // random per process, hex
    unsigned long pid;
};

// State transition; detail is ASCII (codes/offsets, not paths) and is kept
// even after later transitions succeed only for failure states.
void bs_health_set_state(BsState state, const char* detail);
// Failure recording that cannot mask an incomplete cleanup. residualSummary
// is the FACT source: when non-null, actual hooks remain and CleanupFailed is
// forced primary (independently of whether any earlier diagnostic write
// succeeded) with the residual text prefixed to the originating cause. When
// null but the state already says CleanupFailed (e.g. probe builds without a
// residual callback), that state stays primary and the cause is appended.
void bs_health_note_failed_with_cleanup(BsState failure, const char* failureDetail,
                                        const char* residualSummary);
// Loader-side failures recorded before the axis runtime exists.
void bs_health_note_loader_failure(BsState state, const char* detail);
// Publication outcome for the newest distinct payload ("" reason = accepted).
void bs_health_note_publish(bool ok, unsigned int decks, const char* reason);
// Published snapshot cleared (reload/lifecycle); deck count resets, not a failure.
void bs_health_note_clear(void);
// Challenge nonce seen by the setProperty hook.
void bs_health_note_probe(const char* nonce);
// startAxis attempt counter.
void bs_health_note_attempt(void);
// Immediate-handshake export resolution outcome: "ready" or "unresolved"
// (detail lists the missing export names).
void bs_health_note_query(const char* status, const char* detail);
// Successful immediate-handshake answer (counter only).
void bs_health_note_query_answered(void);
// Mirrors hooksReady so receipts cannot claim hooks while they are down.
void bs_health_note_hooks(bool ready);
// Consistent copy for tests and external tools.
BsHealth bs_health_query(void);
// Redirect the receipt file (tests). NULL restores the default next to the DLL.
void bs_health_set_receipt_path(const wchar_t* directoryOrNull);
// Absolute path of the receipt file currently in use.
const wchar_t* bs_health_receipt_path(void);
// Offline-test seam only: make health entry points throw the given faults so
// callers' diagnostic isolation can be tested. Bits: 1=set_state, 2=note_publish,
// 4=note_clear, 8=note_probe. Zero (the default) disables injection.
void bs_health_inject_fault(unsigned int mask);
