#include "axis_health.h"
#include <bcrypt.h>
#include <atomic>
#include <cstdio>
#include <cstring>
#include <cwchar>
#include <mutex>
#include <stdexcept>
#pragma comment(lib, "bcrypt.lib")

namespace {
std::mutex guard;
std::atomic<unsigned int> faultMask{0};
void applyFault(unsigned int bit) {
    if (faultMask.load(std::memory_order_relaxed) & bit) throw std::runtime_error("injected health fault");
}
BsHealth shared{};
wchar_t receiptDir[32768]{};
bool haveReceiptDir;
bool bootGenerated;

const char* stateName(BsState state) {
    switch (state) {
        case BsState::NotInitialized: return "NOT_INITIALIZED";
        case BsState::Active: return "ACTIVE";
        case BsState::Stopped: return "STOPPED";
        case BsState::BaseModuleMissing: return "BASE_MODULE_MISSING";
        case BsState::BaseExportsMissing: return "BASE_EXPORTS_MISSING";
        case BsState::CoreUnsupported: return "CORE_UNSUPPORTED";
        case BsState::PrologueMismatch: return "PROLOGUE_MISMATCH";
        case BsState::ContextEntryFailed: return "CONTEXT_ENTRY_FAILED";
        case BsState::MinHookInitFailed: return "MINHOOK_INIT_FAILED";
        case BsState::HookCreateFailed: return "HOOK_CREATE_FAILED";
        case BsState::HookEnableFailed: return "HOOK_ENABLE_FAILED";
        case BsState::CleanupFailed: return "CLEANUP_FAILED";
    }
    return "UNKNOWN";
}

void copyText(char* destination, size_t capacity, const char* text) {
    if (!text) text = "";
    snprintf(destination, capacity, "%s", text);
}

// Escape a string for embedding in the JSON receipt. Lua-sourced fields
// (probe nonces) may contain quotes, backslashes or control characters.
void escapeJson(char* destination, size_t capacity, const char* text) {
    if (!text) text = "";
    size_t out = 0;
    for (const unsigned char* read = reinterpret_cast<const unsigned char*>(text);
         *read && out + 7 < capacity; ++read) {
        switch (*read) {
            case '"': memcpy(destination + out, "\\\"", 2); out += 2; break;
            case '\\': memcpy(destination + out, "\\\\", 2); out += 2; break;
            case '\b': memcpy(destination + out, "\\b", 2); out += 2; break;
            case '\f': memcpy(destination + out, "\\f", 2); out += 2; break;
            case '\n': memcpy(destination + out, "\\n", 2); out += 2; break;
            case '\r': memcpy(destination + out, "\\r", 2); out += 2; break;
            case '\t': memcpy(destination + out, "\\t", 2); out += 2; break;
            default:
                if (*read < 0x20) {
                    memcpy(destination + out, "\\u00", 4);
                    static const char hex[] = "0123456789abcdef";
                    destination[out + 4] = hex[*read >> 4];
                    destination[out + 5] = hex[*read & 15];
                    out += 6;
                } else {
                    destination[out++] = static_cast<char>(*read);
                }
        }
    }
    destination[out] = 0;
}

void defaultReceiptDirectory(wchar_t* directory, size_t characters) {
    HMODULE self = nullptr;
    if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
                            reinterpret_cast<LPCWSTR>(&stateName), &self) || !self) { directory[0] = 0; return; }
    wchar_t path[32768]{};
    const DWORD n = GetModuleFileNameW(self, path, 32768);
    if (!n || n >= 32768) { directory[0] = 0; return; }
    wchar_t* slash = wcsrchr(path, L'\\');
    if (slash) *slash = 0;
    wcsncpy_s(directory, characters, path, _TRUNCATE);
}

void generateBootId() {
    shared.pid = GetCurrentProcessId();
    unsigned char bytes[16]{};
    if (BCryptGenRandom(nullptr, bytes, sizeof(bytes), BCRYPT_USE_SYSTEM_PREFERRED_RNG) != 0) {
        // Fallback only distinguishes process lifetimes; it is NOT
        // cryptographically unpredictable. Receipt authenticity rests on the
        // nonce echo plus state content, not on this fallback's secrecy.
        FILETIME now{}; GetSystemTimeAsFileTime(&now);
        const unsigned long long mix = (static_cast<unsigned long long>(now.dwHighDateTime) << 32)
            ^ now.dwLowDateTime ^ (reinterpret_cast<unsigned long long>(&shared) >> 4)
            ^ (static_cast<unsigned long long>(GetCurrentProcessId()) << 32) ^ GetTickCount64();
        memcpy(bytes, &mix, sizeof(mix));
        const unsigned long long second = mix ^ 0x9e3779b97f4a7c15ull;
        memcpy(bytes + 8, &second, 8);
    }
    static const char hex[] = "0123456789abcdef";
    for (int i = 0; i < 16; ++i) {
        shared.bootId[i * 2] = hex[bytes[i] >> 4];
        shared.bootId[i * 2 + 1] = hex[bytes[i] & 15];
    }
    shared.bootId[32] = 0;
}

void formatTimestamp(char* destination, size_t capacity) {
    SYSTEMTIME now{}; GetSystemTime(&now);
    snprintf(destination, capacity, "%04u-%02u-%02uT%02u:%02u:%02uZ",
             now.wYear, now.wMonth, now.wDay, now.wHour, now.wMinute, now.wSecond);
}

// Content-bearing receipt; consumers must read state/bootId/probe fields,
// never trust the file's existence alone.
void writeReceiptLocked(const char* updatedAt) {
    wchar_t directory[32768]{};
    if (haveReceiptDir) wcsncpy_s(directory, receiptDir, _TRUNCATE);
    else defaultReceiptDirectory(directory, 32768);
    if (!directory[0]) return;
    const wchar_t* name = L"BridgeSpanCore-health.json";
    wchar_t target[32768 + 64]{}, temporary[32768 + 64]{};
    _snwprintf_s(target, _TRUNCATE, L"%s\\%s", directory, name);
    _snwprintf_s(temporary, _TRUNCATE, L"%s\\%s.tmp", directory, name);
    char body[1920];
    char escapedProbe[256]{};
    char escapedDetail[384]{};
    char escapedInstallFailure[96]{};
    escapeJson(escapedProbe, sizeof(escapedProbe), shared.lastProbe);
    escapeJson(escapedDetail, sizeof(escapedDetail), shared.lastErrorDetail);
    escapeJson(escapedInstallFailure, sizeof(escapedInstallFailure), shared.lastInstallFailure);
    const int length = snprintf(body, sizeof(body),
        "{\"schema\":1,\"bootId\":\"%s\",\"pid\":%lu,\"state\":\"%s\",\"updatedAt\":\"%s\","
        "\"startAttempts\":%u,\"hooksReady\":%s,\"publishOk\":%u,\"publishRejected\":%u,"
        "\"lastPublishOk\":%s,\"lastRejectReason\":\"%s\",\"lastDeckCount\":%u,"
        "\"probes\":%u,\"queries\":%u,\"healthQuery\":\"%s\","
        "\"lastProbe\":\"%s\",\"lastInstallFailure\":\"%s\",\"lastErrorDetail\":\"%s\"}\n",
        shared.bootId, shared.pid, stateName(shared.state), updatedAt,
        shared.startAttempts, shared.hooksReady ? "true" : "false",
        shared.publishOk, shared.publishRejected,
        shared.lastPublishOk ? "true" : "false", shared.lastRejectReason,
        shared.lastDeckCount, shared.probes, shared.queries, shared.healthQuery,
        escapedProbe, escapedInstallFailure, escapedDetail);
    if (length <= 0) return;
    FILE* file = nullptr;
    if (_wfopen_s(&file, temporary, L"wb") || !file) return;
    const bool written = fwrite(body, 1, static_cast<size_t>(length), file) == static_cast<size_t>(length);
    fclose(file);
    if (!written) { DeleteFileW(temporary); return; }
    // Atomic replace so a concurrent reader never sees a torn receipt.
    if (!MoveFileExW(temporary, target, MOVEFILE_REPLACE_EXISTING)) DeleteFileW(temporary);
}
} // namespace

void bs_health_set_state(BsState state, const char* detail) {
    applyFault(1u);
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    shared.state = state;
    if (detail && detail[0]) copyText(shared.lastErrorDetail, sizeof(shared.lastErrorDetail), detail);
    else if (state != BsState::Active && state != BsState::Stopped) shared.lastErrorDetail[0] = 0;
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_loader_failure(BsState state, const char* detail) {
    // Loader failures happen before the runtime exists; route through the same
    // transition so a receipt never claims NotInitialized/Active wrongly.
    bs_health_set_state(state, detail);
}

void bs_health_note_failed_with_cleanup(BsState failure, const char* failureDetail,
                                        const char* residualSummary) {
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    const char* tag = stateName(failure);
    copyText(shared.lastInstallFailure, sizeof(shared.lastInstallFailure), tag);
    if (residualSummary) {
        // Actual residuals are the source of truth: CleanupFailed becomes
        // primary regardless of whether an earlier diagnostic write threw.
        char composed[420];
        snprintf(composed, sizeof(composed), "%s; original failure %s: %s",
                 residualSummary, tag, failureDetail ? failureDetail : "");
        shared.state = BsState::CleanupFailed;
        copyText(shared.lastErrorDetail, sizeof(shared.lastErrorDetail), composed);
    } else if (shared.state == BsState::CleanupFailed) {
        // Belt for callers without a residual callback: keep the pending
        // cleanup primary and append the originating cause.
        char composed[420];
        snprintf(composed, sizeof(composed), "%s; original failure %s: %s",
                 shared.lastErrorDetail, tag, failureDetail ? failureDetail : "");
        copyText(shared.lastErrorDetail, sizeof(shared.lastErrorDetail), composed);
    } else {
        shared.state = failure;
        copyText(shared.lastErrorDetail, sizeof(shared.lastErrorDetail), failureDetail ? failureDetail : "");
    }
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_publish(bool ok, unsigned int decks, const char* reason) {
    applyFault(2u);
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    if (ok) {
        ++shared.publishOk;
        shared.lastRejectReason[0] = 0;
    } else {
        ++shared.publishRejected;
        copyText(shared.lastRejectReason, sizeof(shared.lastRejectReason), reason ? reason : "REJECTED");
    }
    shared.lastPublishOk = ok;
    shared.lastDeckCount = decks;
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_clear() {
    applyFault(4u);
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    shared.lastDeckCount = 0;
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_probe(const char* nonce) {
    applyFault(8u);
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    ++shared.probes;
    copyText(shared.lastProbe, sizeof(shared.lastProbe), nonce ? nonce : "");
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_attempt() {
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    ++shared.startAttempts;
}

void bs_health_note_query(const char* status, const char* detail) {
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    copyText(shared.healthQuery, sizeof(shared.healthQuery), status ? status : "unknown");
    if (detail && detail[0]) {
        char composed[192];
        snprintf(composed, sizeof(composed), "health query %s: %s",
                 status ? status : "unknown", detail);
        copyText(shared.lastErrorDetail, sizeof(shared.lastErrorDetail), composed);
    }
    char updatedAt[32]{};
    formatTimestamp(updatedAt, sizeof(updatedAt));
    writeReceiptLocked(updatedAt);
}

void bs_health_note_query_answered() {
    std::lock_guard<std::mutex> lock(guard);
    if (!bootGenerated) { generateBootId(); bootGenerated = true; }
    ++shared.queries;
}

void bs_health_note_hooks(bool ready) {
    std::lock_guard<std::mutex> lock(guard);
    shared.hooksReady = ready;
}

BsHealth bs_health_query() {
    std::lock_guard<std::mutex> lock(guard);
    return shared;
}

void bs_health_set_receipt_path(const wchar_t* directoryOrNull) {    std::lock_guard<std::mutex> lock(guard);
    if (directoryOrNull && directoryOrNull[0]) {
        wcsncpy_s(receiptDir, directoryOrNull, _TRUNCATE);
        haveReceiptDir = true;
    } else {
        haveReceiptDir = false;
        receiptDir[0] = 0;
    }
}

const wchar_t* bs_health_receipt_path() {
    static wchar_t path[32800]{};
    std::lock_guard<std::mutex> lock(guard);
    wchar_t directory[32768]{};
    if (haveReceiptDir) wcsncpy_s(directory, receiptDir, _TRUNCATE);
    else defaultReceiptDirectory(directory, 32768);
    if (!directory[0]) return L"";
    _snwprintf_s(path, _TRUNCATE, L"%s\\BridgeSpanCore-health.json", directory);
    return path;
}

void bs_health_inject_fault(unsigned int mask) {
    faultMask.store(mask, std::memory_order_relaxed);
}
