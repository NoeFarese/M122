$validInput = $false

while(-not $validInput){
    try {
        cls
        [double]$inputValue = Read-Host "Geben Sie einen dezimalen Wert zwischen 1 und 2 ein"

        if ($inputValue -gt 1 -and $inputValue -lt 2) {
            $validInput = $true
            Write-Host "Eingabe akzeptiert: $inputValue"
        }
    } catch {
        Write-Host "Ungültige Eingabe. Bitte geben Sie einen dezimalen Wert zwischen 1 und 2 ein."
    }
}