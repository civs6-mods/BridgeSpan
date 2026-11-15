@echo off
setlocal
if "%~1"=="" exit /b 2
set "BRIDGESPAN_CORE=%~f1"
pushd "%~dp0"
cl /nologo /O2 /W4 /utf-8 /std:c++17 /EHsc /MT test_axis.cpp loader_core.cpp axis_health.cpp build\buffer.obj build\hook.obj build\trampoline.obj build\hde64.obj /Fo:build\ /Fe:build\test_axis.exe
if errorlevel 1 exit /b 1
build\test_axis.exe "%BRIDGESPAN_CORE%"
if errorlevel 1 exit /b 1
cl /nologo /O2 /W4 /utf-8 /std:c++17 /EHsc /MT test_health_query.cpp axis_health.cpp build\buffer.obj build\hook.obj build\trampoline.obj build\hde64.obj /Fo:build\ /Fe:build\test_health_query.exe
if errorlevel 1 exit /b 1
build\test_health_query.exe "%BRIDGESPAN_CORE%"
if errorlevel 1 exit /b 1
cl /nologo /O2 /W4 /utf-8 /std:c++17 /EHsc /MT test_trade_repair.cpp axis_health.cpp build\buffer.obj build\hook.obj build\trampoline.obj build\hde64.obj /Fo:build\ /Fe:build\test_trade_repair.exe
if errorlevel 1 exit /b 1
build\test_trade_repair.exe
if errorlevel 1 exit /b 1
popd
