@echo off
setlocal

REM Configure and build cmake project with Ninja
cmake --workflow --preset default

cd build/default

REM Run first exe file
for %%f in (*.exe) do (
    echo [INFO] Running: %%f
    %%f
    goto :end
)

echo [ERROR] No .exe file found in build folder!
:end

endlocal
