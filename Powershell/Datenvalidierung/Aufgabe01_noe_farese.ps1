$validInput = $false

while (-not $validInput) {
    try {
        cls
        $inputValue = Read-Host "Geben Sie einen ganzzahligen Wert zwischen 0 und 50 ein"

        if ($inputValue -match "^\d+$" -and $inputValue -ge 0 -and $inputValue -le 50) {
            $validInput = $true
            $intValue = [int]$inputValue
            Write-Host "Eingabe akzeptiert: $intValue"
        }
    } catch {
        Write-Host "Ungültige Eingabe. Bitte geben Sie einen ganzzahligen Wert zwischen 0 und 50 ein."
    }
}