// Independent GameCore loader probe. Uses only the user's installed game DLL.
// No injection process, copied game binary, Lua sandbox changes, or game-file edits.
#include <windows.h>
#include <filesystem>
#include <cstdio>
#include <mutex>
#include "build/exports.h"
#include "axis_health.h"
#include "loader_core.h"

namespace fs = std::filesystem;
static HMODULE selfModule;
static HMODULE baseModule;
static std::once_flag initFlag;
static CreateContext createContext;
static DestroyContext destroyContext;
#ifdef BRIDGESPAN_AXIS
extern bool startAxis(HMODULE,const wchar_t*,void (*)(const char*,const wchar_t*));
extern void stopAxis();
extern bool axisHasResiduals();
static fs::path installedCore;
#endif

static fs::path modulePath(HMODULE module) {
    wchar_t path[32768]{};
    DWORD n = GetModuleFileNameW(module, path, 32768);
    return n && n < 32768 ? fs::path(path) : fs::path();
}

static void logMessage(const char* event, const wchar_t* detail = L"") {
    auto path = modulePath(selfModule).parent_path() / L"BridgeSpanCore-probe.log";
    FILE* file = nullptr;
    if (_wfopen_s(&file, path.c_str(), L"a, ccs=UTF-8") || !file) return;
    SYSTEMTIME now; GetSystemTime(&now);
    fwprintf(file, L"%04u-%02u-%02uT%02u:%02u:%02uZ pid=%lu %hs %ls\n",
        now.wYear, now.wMonth, now.wDay, now.wHour, now.wMinute, now.wSecond,
        GetCurrentProcessId(), event, detail);
    fclose(file);
}

static void initialize() {
    const auto exe = modulePath(nullptr);
    auto root = exe.parent_path().parent_path().parent_path().parent_path();
    auto corePath = root / L"DLC/Expansion2/Binaries/Win64/GameCore_XP2_FinalRelease.dll";
#ifdef BRIDGESPAN_AXIS
    installedCore=corePath;
#endif
    logMessage("PROXY_LOADED", modulePath(selfModule).c_str());
    baseModule = LoadLibraryExW(corePath.c_str(), nullptr, LOAD_WITH_ALTERED_SEARCH_PATH);
    if (!baseModule) {
        char detail[160];
        snprintf(detail, sizeof(detail), "LoadLibraryExW failed with error %lu", GetLastError());
        logMessage("BASE_LOAD_FAILED", corePath.c_str());
        bs_health_note_loader_failure(BsState::BaseModuleMissing, detail);
        return;
    }
    createContext = reinterpret_cast<CreateContext>(GetProcAddress(baseModule, "DllCreateGameContext"));
    destroyContext = reinterpret_cast<DestroyContext>(GetProcAddress(baseModule, "DllDestroyGameContext"));
    if (createContext && destroyContext) {
        logMessage("BASE_READY", corePath.c_str());
        return;
    }
    char detail[160];
    snprintf(detail, sizeof(detail), "missing exports:%s%s",
             createContext ? "" : " DllCreateGameContext", destroyContext ? "" : " DllDestroyGameContext");
    logMessage("EXPORT_MISSING", corePath.c_str());
    bs_health_note_loader_failure(BsState::BaseExportsMissing, detail);
}

static LoaderCore makeEnv() {
    LoaderCore env{};
    env.createContext = createContext;
    env.destroyContext = destroyContext;
#ifdef BRIDGESPAN_AXIS
    env.startAxis = [](void* core) {
        return startAxis(reinterpret_cast<HMODULE>(core), installedCore.c_str(), logMessage);
    };
    env.stopAxis = stopAxis;
    env.residualHooks = axisHasResiduals;
    env.axisArg = baseModule;
#else
    env.startAxis = nullptr;
    env.stopAxis = nullptr;
    env.axisArg = nullptr;
#endif
    env.log = logMessage;
    return env;
}

extern "C" __declspec(dllexport) void* __cdecl DllCreateGameContext() {
    // Exported entry points never leak C++ exceptions into the engine; a
    // failure surfaces as "no context" plus a receipt, not as a crash.
    // (Windows access violations are not C++ exceptions and stay visible.)
    try {
        std::call_once(initFlag, initialize);
        if (!baseModule) { logMessage("AXIS_REQUIRED_LOAD_ABORTED"); return nullptr; }
        auto env = makeEnv();
        return loader_create_context(env);
    } catch (...) {
        try { logMessage("CONTEXT_ENTRY_EXCEPTION"); } catch (...) {}
        try { bs_health_note_loader_failure(BsState::ContextEntryFailed,
                                            "exception during context export"); } catch (...) {}
        return nullptr;
    }
}

extern "C" __declspec(dllexport) void __cdecl DllDestroyGameContext(void* context) {
    try {
        auto env = makeEnv();
        loader_destroy_context(env, context);
    } catch (...) {
        try { logMessage("DESTROY_ENTRY_EXCEPTION"); } catch (...) {}
    }
}

BOOL WINAPI DllMain(HMODULE module, DWORD reason, LPVOID) {
    if (reason == DLL_PROCESS_ATTACH) {
        selfModule = module;
        DisableThreadLibraryCalls(module);
    }
    // Keep the base module mapped for forwarded exports until process exit.
    // No loader-lock work, background thread, hooks or side effects in DllMain.
    return TRUE;
}
