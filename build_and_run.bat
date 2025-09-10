@echo off
setlocal

REM Create build directory next to repository folder.
REM This allow to clean the git repo without the need to rebuild the app.
REM You can skip this to create build folder inside the repository.
cd ..

if not exist build_wxApp (
    mkdir build_wxApp
)
cd build_wxApp

REM Configure cmake project with Ninja
cmake %~dp0 -G "Ninja"
if errorlevel 1 (
    echo [ERROR] CMake configuration failed!
    exit /b 1
)

REM Build project
cmake --build .
if errorlevel 1 (
    echo [ERROR] Build failed!
    exit /b 1
)

REM Run first exe file
for %%f in (*.exe) do (
    echo [INFO] Running: %%f
    %%f
    goto :end
)

echo [ERROR] No .exe file found in build folder!
:end

endlocal
