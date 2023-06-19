#Aufgabe 05

function prozessor(){
    $processor = Get-WmiObject -Class Win32_Processor

    $processorType = $processor.Name
    $architecture = $processor.Architecture
    $cores = $processor.NumberOfCores

    Write-Host "Processor: $processorType"
    Write-Host "Architecture: $architecture"
    Write-Host "Cores: $cores"
}

prozessor