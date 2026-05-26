@echo off
echo Mematikan server DropPrint yang berjalan di port 3000...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000') do (
    taskkill /f /pid %%a
    echo Server di PID %%a berhasil dimatikan.
)
echo Server DropPrint telah dimatikan.
timeout /t 2 >nul
