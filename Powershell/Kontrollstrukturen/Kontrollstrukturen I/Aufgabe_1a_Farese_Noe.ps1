function ServerCheck(){
    if(Test-Connection -Count 1 8.8.8.8){
        echo "Server gibt Antwort!"
    }
    else{
        echo "Server gibt keine Antwort!"
    }
}

ServerCheck