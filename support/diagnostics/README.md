# BridgeSpan diagnostics

[Download the Windows client](https://github.com/civs6-mods/BridgeSpan/releases/tag/diagnostics-v1.0.0) · [中文使用说明](使用说明.txt)

After encountering a problem, open **BridgeSpan-Diagnostics.exe**, click **生成诊断包** (Create diagnostics package), and send the generated desktop ZIP to the author. **找到压缩包** opens its location. No installation, administrator access, or manual log selection is required. The current GUI is in Simplified Chinese.

The client automatically finds Steam libraries and game logs, extracts the latest BridgeSpan load context and the most recent matching error with surrounding lines, and retains the collected source logs for verification. Timestamp and stale-log notes are included inside the package for the author; players do not need to interpret them. If no usable logs exist, the client asks the player to reproduce the issue and collect again.

## What is collected

- Game/mod versions, supported DLL fingerprints, duplicate installations, and running game process/module metadata.
- `Lua.log`, `Modding.log`, `Database.log`, `GameCoreAppConfig.log`, and BridgeSpan's native probe log and health receipt.
- The installed `.modinfo` and `CoreConfig.sql`.
- `诊断摘要.txt`, structured `summary.json`, and automatically selected context/error extracts under `analysis/`.

It does not change the game, mods, saves, or settings, and does not upload anything. Game DLLs, saves, crash dumps, and account credentials are not collected. Common user-directory prefixes are redacted; logs can still contain paths, mod names, and game/player information. Share the package with the author rather than posting it publicly.

## Interpreting the evidence

Logs are retained files, not a per-save archive. Automatic selection uses BridgeSpan initialization markers, native load boundaries, PIDs and timestamps; it cannot identify a save reliably or restore overwritten records. Native and Lua contexts are selected independently, without claiming they belong to the same match. Earlier errors are explicitly marked when a newer load context exists. `STOPPED` or `CONTEXT_DESTROYED` alone is not a fault. No matching error does not prove the mod was healthy; some on-screen errors may not have been logged.

The newest available copy of each standard game log is collected. Files over 8 MiB are limited to their last 12,000 lines; `summary.json` records this. Line numbers in extracts refer to the collected copies. The latest context extract includes up to 50 recent relevant lines with nearby context; a separate file preserves the latest matching error, including one from an earlier context. Check source logs and timestamps before drawing conclusions.

## Build and test

Windows x64, Windows PowerShell 5.1, and .NET Framework 4.x are required. Build using the installed Framework compiler; no external packages are downloaded:

```powershell
powershell -NoProfile -File .\Test-Diagnostics.ps1
powershell -NoProfile -File .\Build-DiagnosticsClient.ps1
```

The standalone client embeds the collector and analysis scripts. Output: `build/BridgeSpan-Diagnostics.exe`. Generated binaries/packages are ignored by Git and distributed through Releases. PowerShell sources use UTF-8 with BOM for Windows PowerShell 5.1.

For a headless local check, run `build/BridgeSpan-Diagnostics.exe --collect-to <output-directory>` and wait for it to exit. The PowerShell collector can also be run directly with `-OutputDirectory <path>` and optional `-SteamLibrary <path>`; it leaves the unpacked folder and status sidecar next to the ZIP. Never commit diagnostic output or player logs.
