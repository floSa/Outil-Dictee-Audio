@echo off
echo [Whisper] Arret du client et du serveur Whisper...
taskkill /F /IM pythonw.exe 2>nul
wsl -d Ubuntu-24.04 -- bash -c "/home/florian/mes_projets/outils/productivite/Outil-Dictee-Audio/scripts/stop_server.sh"
echo [Whisper] VRAM GPU 100%% liberee et client arrete.
timeout /t 2 >nul
