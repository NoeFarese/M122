#B3

function mOwn ([int] $zahl1, [int] $zahl2)
{
    $zahl1 = Read-Host "Eingabe der ersten Zahl"
    $zahl2 = Read-Host "Eingabe der zweiten Zahl"

    [int] $result = $zahl1*$zahl2
    echo $result
}

mOwn