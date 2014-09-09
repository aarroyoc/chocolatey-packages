#Install ResidualVM - INNO SETUP
$url = "http://prdownloads.sourceforge.net/residualvm/residualvm-0.1.1-win32.exe"

Install-ChocolateyPackage "residualvm" "exe" "/VERYSILENT" "$url"