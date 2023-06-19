xfunction mSum([int]$p1, [int]$p2) {
    if(($p1 -gt 0 -and $p2 -gt 0) -or ($p1 -lt 0 -and $p2 -lt 0)) {
        return $p1 - $p2
    }
    else {
        Write-Host "Ungleiche Vorzeichen"
        return
    }
}


mSum 10 4
mSum 4 10
mSum -10 4
mSum 10 -4
mSum -10 -4
mSum -4 -10 
