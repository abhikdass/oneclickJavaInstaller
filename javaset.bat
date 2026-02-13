@echo off
setlocal EnableDelayedExpansion

echo =================================
echo   Java JDK 17 Portable Setup
echo =================================

set "JAVA_DIR=C:\Java\jdk-17"
set "ZIP_FILE=%TEMP%\jdk17.zip"

REM Download from Adoptium API (NOT GitHub)
set "JDK_URL=https://api.adoptium.net/v3/binary/latest/17/ga/windows/x64/jdk/hotspot/normal/eclipse?project=jdk"

echo Downloading Java 17 (portable)...

curl -L --fail "%JDK_URL%" -o "%ZIP_FILE%"

if not exist "%ZIP_FILE%" (
    echo ❌ Download failed
    pause
    exit /b
)

REM Basic size check (Java ZIP is >150MB)
for %%A in ("%ZIP_FILE%") do if %%~zA LSS 50000000 (
    echo ❌ Download blocked or incomplete
    del "%ZIP_FILE%"
    pause
    exit /b
)

echo Extracting Java...
mkdir C:\Java >nul 2>&1
tar -xf "%ZIP_FILE%" -C C:\Java

REM Detect extracted folder
for /d %%i in ("C:\Java\jdk-17*") do (
    set "JAVA_HOME=%%i"
)

if not defined JAVA_HOME (
    echo ❌ Extraction failed
    pause
    exit /b
)

echo Setting JAVA_HOME=%JAVA_HOME%
setx JAVA_HOME "%JAVA_HOME%" /M >nul
setx PATH "%JAVA_HOME%\bin;%PATH%" /M >nul

echo =================================
echo ✅ Java 17 READY
echo 🔁 Restart CMD
echo =================================

"%JAVA_HOME%\bin\java.exe" -version
pause
