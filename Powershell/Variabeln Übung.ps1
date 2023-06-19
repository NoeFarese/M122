<#Dieses Skript erstellt einen Ordner, welcher nach der Variabel "directoryName" benennt wird.#>
echo "Name of folder"
$direcotryName = Read-Host
echo "choose your path"
mkdir $direcotryName
