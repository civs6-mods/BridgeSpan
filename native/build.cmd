@echo off
setlocal
if "%~1"=="" (
 echo Usage: native\build.cmd "path\to\GameCore_XP2_FinalRelease.dll"
 exit /b 2
)
where cl >nul 2>nul
if errorlevel 1 (
 echo Run from an x64 Native Tools Command Prompt for Visual Studio 2022.
 exit /b 2
)
set "BRIDGESPAN_CORE=%~f1"
pushd "%~dp0"
python prepare.py "%BRIDGESPAN_CORE%"
if errorlevel 1 exit /b 1
cl /nologo /c /O2 /W3 /MT vendor\minhook\src\buffer.c vendor\minhook\src\hook.c vendor\minhook\src\trampoline.c vendor\minhook\src\hde\hde64.c /Fo:build\
if errorlevel 1 exit /b 1
cl /nologo /LD /O2 /W4 /utf-8 /std:c++17 /EHsc /MT /DBRIDGESPAN_AXIS loader.cpp loader_core.cpp axis_runtime.cpp axis_health.cpp build\buffer.obj build\hook.obj build\trampoline.obj build\hde64.obj /Fo:build\ /Fe:build\GameCore_XP2_BridgeSpan_FinalRelease.dll /link /IMPLIB:build\axis.lib
if errorlevel 1 exit /b 1
popd
