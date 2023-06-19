#Aufgabe 03


function Write-Log([string]$logFile, [string]$message, [string]$qualification = "message") {
    $timestamp = Get-Date -Format "yyyy.MM.dd HH:mm"
    $username = $env:USERNAME
    $logEntry = "$timestamp - $username - $qualification - $message"
    Add-Content -Path $logFile -Value $logEntry
}

 Write-Log "C:\Users\bbzwadmin\Desktop\1.Lehrjahr\2. Semester\M122\PowerShell\Funktionen_Vertiefung\msg.log" "Angemeldet" "warning"