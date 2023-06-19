#Aufgabe 01

    $firstName = Read-Host "gebe deinen Vornamen ein "
    $lastName = Read-Host "gebe deinen Nachnamen ein "
    $location = Read-Host "gebe deinen Wohnort ein "

function printOut ($firstName, $lastName, $location)
{
    echo "Guten tag $firstName $lastName von $location"
 }

 printOut $firstName $lastName $location