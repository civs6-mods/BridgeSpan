#include "loader_core.h"

// catch(...) here handles C++ exceptions only (/EHsc build): Windows access
// violations are SEH and deliberately not swallowed -- a hard crash stays
// visible instead of degrading into silently permissive behavior.

static void bestEffortLog(LoaderCore& env, const char* event) {
    if (!env.log) return;
    try { env.log(event, L""); } catch (...) {}
}

void* __cdecl loader_create_context(LoaderCore& env) {
    try {
        if (!env.createContext || !env.destroyContext) {
            bs_health_set_state(BsState::BaseExportsMissing,
                                "context entry points missing at creation time");
            bestEffortLog(env, "AXIS_REQUIRED_LOAD_ABORTED");
            return nullptr;
        }
        if (env.residualHooks && env.residualHooks()) {
            // A previous stop could not prove every detour removed. Refuse a
            // new context rather than masking residuals behind a fresh game;
            // the CleanupFailed receipt stays primary and untouched.
            bestEffortLog(env, "AXIS_REQUIRED_LOAD_ABORTED");
            return nullptr;
        }
        if (env.startAxis && !env.startAxis(env.axisArg)) {
            // startAxis recorded its own failure state and rolled back.
            bestEffortLog(env, "AXIS_REQUIRED_LOAD_ABORTED");
            return nullptr;
        }
        void* result = env.createContext();
        if (!result) {
            if (env.stopAxis) { try { env.stopAxis(); } catch (...) {} }
            // The cleanup outcome comes from the runtime's own residual check
            // (fact), not from a diagnostic write having succeeded.
            const char* residualSummary = nullptr;
            if (env.residualHooks) { try { if (env.residualHooks()) residualSummary = "cleanup incomplete after context failure"; } catch (...) {} }
            bs_health_note_failed_with_cleanup(BsState::ContextEntryFailed,
                                               "original context creation returned null",
                                               residualSummary);
            bestEffortLog(env, "CONTEXT_FAILED");
            return nullptr;
        }
        bestEffortLog(env, "CONTEXT_CREATED");
        return result;
    } catch (...) {
        if (env.stopAxis) { try { env.stopAxis(); } catch (...) {} }
        const char* residualSummary = nullptr;
        if (env.residualHooks) { try { if (env.residualHooks()) residualSummary = "cleanup incomplete after context failure"; } catch (...) {} }
        try {
            bs_health_note_failed_with_cleanup(BsState::ContextEntryFailed,
                                               "exception escaped the original context entry point",
                                               residualSummary);
        } catch (...) {}
        bestEffortLog(env, "CONTEXT_ENTRY_EXCEPTION");
        return nullptr;
    }
}

void __cdecl loader_destroy_context(LoaderCore& env, void* context) {
    try {
        if (env.destroyContext) env.destroyContext(context);
    } catch (...) {
        bestEffortLog(env, "DESTROY_ENTRY_EXCEPTION");
    }
    // Axis teardown runs even when the original destroy threw.
    if (env.stopAxis) { try { env.stopAxis(); } catch (...) {} }
    bestEffortLog(env, "CONTEXT_DESTROYED");
}
