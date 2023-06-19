#B1 
#fordert Eingabe von zwei Zahlen und gibt deren Summe aus
function mAdd ()
{
    echo "Geben Sie eine Zahl ein"
   [int] $zahlEins = Read-Host
    echo "Geben Sie die zweite Zahl ein"
   [int] $zahlZwei = Read-Host

   [int] $result = $zahlEins + $zahlZwei
    echo "Das Resultat ist: " $result
}

mAdd