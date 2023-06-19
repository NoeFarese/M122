while($true){
    $readLetter =Read-Host "gib einen Buchstaben ein:" 
    if($readLetter -eq "a"){
        echo "Gratulation!"
        break;
    }
    else{
        echo "Schade stimmt nicht, noch einmal"
    } 
}