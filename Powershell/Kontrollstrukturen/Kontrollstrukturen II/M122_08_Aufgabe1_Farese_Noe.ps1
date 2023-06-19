function mWahlSel([int]$zahl1, [int]$zahl2) {
  if ($zahl1 -lt $zahl2) {
    Write-Host "Die kleinere Zahl ist $zahl1."
  } else {
    Write-Host "Die kleinere Zahl ist $zahl2."
  }
}

mWahlSel 5 10

function mWahlSelCtrl([int]$zahl1, [int]$zahl2, [int]$wahl) {
    if ($wahl -eq 1) {
        if ($zahl1 -lt $zahl2) {
            return $zahl1
        } else {
            return $zahl2
        }
    } elseif ($wahl -eq 2) {
        if ($zahl1 -gt $zahl2) {
            return $zahl1
        } else {
            return $zahl2
        }
    } else {
        Write-Error "Ungültige Wahl: $wahl. Es muss entweder 1 oder 2 sein."
    }
}

mWahlSelCtrl 2 3 2
mWahlSelCtrl 3 2 1
