@echo off
title Nvidia NIM Proxy + Tunnel Launcher
echo Starting NIM to OpenAI Proxy...
start cmd /k "set NIM_API_KEY=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&set CLIENT_AUTH_KEY=ZyadNvidiaSecretKey&set SHOW_REASONING=true&node server.js"
echo Starting public tunnel...
start cmd /k "ssh -o StrictHostKeyChecking=no -R 80:127.0.0.1:3000 nokey@localhost.run"
echo.
echo Both services are starting!
echo Please look at the SSH window to find your public URL (it will look like: https://xxxx.lhr.life).
echo Copy that URL, add /v1 to the end of it (e.g. https://xxxx.lhr.life/v1), and paste it into Janitor AI.
echo.
pause
