Set WshShell = CreateObject("WScript.Shell")
WshShell.CurrentDirectory = "C:\Users\FLORIAN\Documents\_Documents\Codes_Projes_Dev\outils\productivite\Outil-Dictee-Audio"

' 1. Réveil silencieux de WSL et démarrage du conteneur Whisper GPU (asynchrone)
WshShell.Run "wsl.exe -d Ubuntu-24.04 -- bash /home/florian/mes_projets/outils/productivite/Outil-Dictee-Audio/scripts/start_server.sh", 0, False

' 2. Lancement du client silencieux de dictée (100% invisible)
WshShell.Run """C:\Users\FLORIAN\Documents\_Documents\Codes_Projes_Dev\outils\productivite\Outil-Dictee-Audio\.venv\Scripts\pythonw.exe"" -m whisper_dictation.main run", 0, False
Set WshShell = Nothing
