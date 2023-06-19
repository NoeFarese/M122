#Aufagbe C
function mSumRet {
    param (
        # Der erste Input-Parameter für die Addition
        [int]$a,
        # Der zweite Input-Parameter für die Addition
        [int]$b
    )

    # Rückgabe der Summe der beiden Input-Parameter
    return $a + $b
}

# Test 1 --> ergebnis sollte 7 sein
mSumRet 3 4

# Test 2 --> ergenbis sollte 203 sein
mSumRet 3 (mSumRet 100 100)
