:: Mein erstes Batch-Skript, Ausgabe wird in einer .txt-Datei gespeichert 
@echo off

:: Netzwerkverbindungsdetails ansehen
ipconfig /all >> ergebnisse.txt

:: Prüfe, ob LerneProgrammieren.de erreichbar ist
ping lerneprogrammieren.de >> ergebnisse.txt

:: Führe eine Traceroute aus, um die Route zu lerneprogrammieren.de zu überprüfen
tracert lerneprogrammieren.de >> ergebnisse.txt
pause
