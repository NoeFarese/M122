mkdir UebungPowershell
cd UebungPowershell
New-Item README.md
mkdir admin
mkdir src
cd src 
mkdir bin
mkdir test 
cd ../..
ls
Move-Item .\UebungPowershell\ .\verschiebung\
ls
rm -r verschiebung