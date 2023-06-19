# Erstellt eine Datei "data" mit zufälligen, einstelligen Zahlen
Get-Random -InputObject (1..9) -Count 10 | Out-File -FilePath "data" -Encoding ASCII

# Gibt den Inhalt der Datei "data" sortiert aus
Get-Content "data" | Sort-Object | ForEach-Object {Write-Host $_}
