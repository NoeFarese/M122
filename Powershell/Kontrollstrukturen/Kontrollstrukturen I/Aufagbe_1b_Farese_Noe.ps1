#gibt Gratulation aus wenn der Buchstaben a ist
function checkLetter(){
    echo "Geben Sie einen Buchstaben ein: "
    $val = Read-Host

    if($val -eq "a"){
        echo "Gratulation!"
    }
    else{
        echo "Schade, stimmt nicht"
    }
}

checkLetter