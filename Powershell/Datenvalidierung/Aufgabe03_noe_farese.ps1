$datumString = Read-Host "Geben Sie ein Datum im Format dd.mm.yyyy ein"

try {
    $datum = Get-Date -Date $datumString -Format "dd.MM.yyyy"
    $heutigesDatum = Get-Date -Format "dd.MM.yyyy"

    if ($datum -ge $heutigesDatum) {
        Write-Host "Datum genehmigt."
    }
    else {
        Write-Host "Datum nicht genehmigt."
    }
}
catch {
    Write-Host "Fehler beim Parsen des Datums. Stellen Sie sicher, dass das Datum im Format dd.mm.yyyy eingegeben wurde."
}
