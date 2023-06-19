#Aufgabe 04

function backup (){
    $sourceDir = Read-Host "Geben Sie das Verzeichnis an, das gesichert werden soll"
    $destDir = Read-Host "Geben Sie den Pfad an, wo das Backup gespeichert werden soll"
    $backupName = (Get-Date).ToString("yyyyMMdd_HHmm") + ".zip"
    Compress-Archive -Path $sourceDir -DestinationPath "$destDir\$backupName"
}

backup