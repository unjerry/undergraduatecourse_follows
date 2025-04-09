@echo off
setlocal

:: 设置服务器端口号
set PORT=8000

:: 获取当前目录路径
set "DIR=%CD%"

:: 启动 Python HTTP 服务器
start "" python -m http.server %PORT% --directory "%DIR%"

:: 等待服务器启动
timeout /t 3 /nobreak >nul

:: 在默认浏览器中打开指定的网页
start "" http://localhost:%PORT%/index.html

endlocal
