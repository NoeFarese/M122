function mPreis2([int]$Preis, [int]$Stueckanzahl){
    echo "Der Preis beträgt: $Preis"
}

function mPreis3([String]$Artikel,[int]$Preis, [int]$Stueckanzahl){
    echo "Der Preis von $Artikel beträgt: $Preis"
}

function mPreis4(
                [String]$Artikel,
                [int]$Preis, 
                [int]$Stueckanzahl)
    
    {
    $Artikel = "SSD"
    $Preis = 120
    $Stueckanzahl = 1

    echo "Der Preis von $Artikel beträgt: $Preis und die Anzahl beträgt $Stueckanzahl"
}

mPreis4