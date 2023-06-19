#Aufgabe 02

function Write-Log([string]$message) {
    $logFile = "C:\Users\bbzwadmin\Desktop\1.Lehrjahr\2. Semester\M122\PowerShell\Funktionen_Vertiefung\Aufgabe02\msg.log"
    $timestamp = Get-Date -Format "yyyy.MM.dd HH:mm"
    $username = $env:USERNAME
    $logEntry = "$timestamp - $username - $message"
    Add-Content -Path $logFile -Value $logEntry
}


Write-Log "Angemeldet"
Write-Log "Abgemeldet"