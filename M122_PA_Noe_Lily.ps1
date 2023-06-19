# Partnerarbeit Noe Lily


# Variablen für Verzeichnis-/Dateipfade
$pathOriginal = "D:\Downloads\Original\"          #"C:\Users\bbzwadmin\Documents\Original\"
$pathTemp = "D:\Downloads\ZipFolder\Original\"    #"C:\Users\bbzwadmin\Documents\ZipFolder\Original\"
$pathZipFolder = "D:\Downloads\ZipFolder\"        #"C:\Users\bbzwadmin\Documents\ZipFolder\"
$aktuellesDatum = Get-Date -Format "dd.MM.yyyy"
$zipName = "$aktuellesDatum.zip"
$pathZip = $pathZipFolder + $zipName

# Liste, welche Dateien für inkrementelles Backup trägt
$backupItems = @()

# Überprüfen, ob bereits ein Backup existiert
$directoryInfo = Get-ChildItem $pathZipFolder -File | Measure-Object
if($directoryInfo.count -gt 0){
    # Neuste Backup Datei holen
    $lastBackUp = Get-ChildItem $pathZipFolder | Sort-Object Name -Descending | Select-Object -First 1

    # Alle Dateien und Ordner des Original Ordners holen
    $files = Get-ChildItem $pathOriginal -Recurse -Name -File

    # Durch jede Datei von $files Loopen
    foreach ($file in $files) {
        $fileFull = "$pathOriginal$file"
        $modify = (Get-Item $fileFull).LastWriteTime
        $lastBackUpname = $lastBackUp.LastWriteTime

        # Neue Dateien der Backupliste hinzufügen
        if ($modify -gt $lastBackUpname) {
            $backupItems += $file
        }
    }

    # Falls es eine neue Datei gibt, inkrementelles Backup starten
    if($backupItems.Count -gt 0){
        # Temp Ordner erstellen
        New-Item -ItemType Directory -Force -Path $pathTemp
        foreach($item in $backupItems){
            $itemPath = Split-Path -Path $item
            # Falls die Datei in einem Unterordner ist, den Ordner erstellen
            if ($itemPath) {
                $itemTempPath = $pathTemp + $itemPath + "\"
                New-Item -ItemType Directory -Force -Path $itemTempPath
            } else {
                $itemTempPath = $pathTemp
            }
            $itemOriginal = $pathOriginal + $item
            # Neue Dateien in Temp Ordner zwischen speichern
            Copy-Item -Path $itemOriginal -Destination $itemTempPath -Recurse -Force 
        }
        if([System.IO.File]::Exists($pathZip)){
            Remove-Item $pathZip
        }
        # Inkrementelles Backup machen
        Compress-Archive -Path $pathTemp -DestinationPath $pathZip
        Rename-Item -Path $pathZip -NewName "$aktuellesDatum.zip"

        # Temp Ordner wieder löschen
        Remove-Item -LiteralPath $pathTemp -Force -Recurse
}


} else {
    # Vollbackup starten
    if([System.IO.File]::Exists($pathZip)){
        Remove-Item $pathZip
    }
    # Voll Backup machen
    Compress-Archive -Path $pathOriginal -DestinationPath $pathZip
    Rename-Item -Path $pathZip -NewName "$aktuellesDatum.zip"
}






<#
Testfall

Ausgangslage:
•	Im Documents Ordner befindet sich weder der Ordner «Original» noch «ZipFolder»

Funktion des Skripts:
•	Vom Originalordner wird ein Zip erstellt und im «ZipFolder» gespeichert, 
    falls kein Backup vorhanden ist oder eine Datei im Originalordner seit 
    dem letzten Backup verändert wurde

Erwartetes Ergebnis:
•	Im Ordner «ZipFolder» befindet sich eine Zipdatei, welche nach dem aktuellen Datum benannt wurde
•	In der Zipdatei existieren die Datei «Text1.txt» und ein Ordner «Test» 
    mit der Datei «Text2.txt» darin

Ablauf:
•	Zwei Ordner erstellen mit dem Namen «Original» und «ZipFolder» 
•	Im Originalordner wird eine Textdatei «Text1.txt», ein Ordner «Test» 
    mit der Datei «Text2.txt» darin angelegt.
•	Skript ausführen. 

Eigentliches Ergebnis:
•	Existiert im Ordner «ZipFolder» eine Zipdatei: Ja
•	Beinhaltet die Zipdatei die Datei «Text1.txt»: Ja
•	Beinhaltet die Zipdatei den Ordner «Test» mit der Datei «Text2.txt»: Ja

Probleme:
•	-

#>