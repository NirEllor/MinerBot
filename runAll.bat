@echo off
setlocal enabledelayedexpansion

set COUNT=10
set /a LASTINDEX=%COUNT%-1

for /L %%i in (0,1,%LASTINDEX%) do (
    rem 🔹 Extract wallet address from line %%i
    for /f "usebackq tokens=* delims=" %%A in (`powershell -Command "(Get-Content 'wallets.txt')[%%i]"`) do (
        set "WALLET=%%A"
    )

    rem 🔹 Print launch info
    echo 🚀 Launching container %%i with wallet !WALLET!

    rem 🔹 Run container with the correct environment variables
    start "" cmd /c "docker run --rm --env-file .env -e CONTAINER_INDEX=%%i -e WALLET=!WALLET! miner-1 > log%%i.txt 2>&1"
)

pause
