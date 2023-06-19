#Aufgabe a)

function zahlenReihe(){
    [int]$zahl = Read-Host "Geben Sie eine positive Zahl ein"

    if ($zahl -gt 0) {
      for ($i = 1; $i -le 10; $i++) {
        $ergebnis = $zahl * $i
        Write-Host "$zahl x $i = $ergebnis"
      }
    }
    else {
      Write-Host "Die eingegebene Zahl ist nicht positiv."
    }
}

zahlenReihe 

# Aufgabe b)
function regnetEs(){
    $rain = Read-Host "Is it raining [yes/no]"
    if($rain.toLower() -eq "yes"){
        echo "Spannen Sie bitte den Schirm auf"
    }
}

regnetEs 


# Aufgabe c)
$rucksackInhalt = ""
$item = Read-Host "Was ist der erste Gegenstand im Rucksack? (Leer lassen, um das Spiel zu beenden)"
while ($item -ne "") {
    $rucksackInhalt += $item + ", "
    $item = Read-Host "Was ist der nächste Gegenstand im Rucksack? (Leer lassen, um das Spiel zu beenden)"
}
Write-Host "Der Rucksack enthält: $rucksackInhalt"

# Aufgabe d)
$aktuellesAlter = Read-Host "Wie alt sind Sie?"
$jahreBisZurRente = 65 - $aktuellesAlter
Write-Host "In $jahreBisZurRente Jahren sind Sie 65 Jahre alt."


# Aufgabe e)
[bool]$gueltig = $false;

while($gueltig -eq $false){
    $input = Read-Host "Bitte geben Sie eine Zahl zwischen 1 und 10 ein"
    if ($input -lt 1 -or $input -gt 10) {
        Write-Host "Falsche Eingabe. Bitte geben Sie eine Zahl zwischen 1 und 10 ein."
    }else{
        echo "Ihre Wahl fällt auf die $input"
        $gueltig = $true;
    }
}
