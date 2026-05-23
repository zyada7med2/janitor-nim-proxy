@echo off
title Nvidia NIM to OpenAI Proxy
echo Starting Nvidia NIM Proxy...
set NIM_API_KEY=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
set CLIENT_AUTH_KEY=ZyadNvidiaSecretKey
set SKIP_VALIDATION=true
node server.js
pause
