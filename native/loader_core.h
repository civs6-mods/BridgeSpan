// Context lifecycle with explicit failure gates, separated from Win32 module
// resolution so offline tests can inject every dependency. Gate order for
// creation: BOTH original exports present, axis started, then context
// created. Any failure rolls back an installed axis, records a non-active
// health state, and returns nullptr -- never a permissive context.
#pragma once
#include <windows.h>
#include "axis_health.h"

using CreateContext = void* (__cdecl*)();
using DestroyContext = void (__cdecl*)(void*);
using LogFn = void (*)(const char*, const wchar_t*);

struct LoaderCore {
    CreateContext createContext;    // null = original export missing
    DestroyContext destroyContext;  // null = original export missing
    bool (*startAxis)(void*);       // injected; null in probe builds
    void (*stopAxis)();             // injected; null in probe builds
    void* axisArg;                  // opaque argument passed to startAxis
    bool (*residualHooks)();        // injected; true while a stop could not prove removal
    LogFn log;                      // may be null
};

void* __cdecl loader_create_context(LoaderCore& env);
// Teardown always runs, even when the original destroy call throws.
void __cdecl loader_destroy_context(LoaderCore& env, void* context);
