#B2
function mAdd2 ([int] $z1,[int] $z2) 
{
  echo "Eingabe erste Zahl"
  $z1 = Read-Host

  echo "Eingabe zweite Zahl"
  $z2 = Read-Host

  [int] $result = $z1+$z2
}

mAdd2