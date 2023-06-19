function mLoop1($value) {
  for($i=1; $i -le $value; $i++) {
    Write-Host $i
  }
}

mLoop1 10

function mLoop2($value) {
  $i = 1
  do {
    Write-Host $i
    $i++
  } while ($i -le $value)
}

mLoop2 10