#Install ScummVM - INNO SETUP
$url = "http://prdownloads.sourceforge.net/scummvm/scummvm-1.7.0-win32.exe"

Install-ChocolateyPackage "scummvm" "exe" "/VERYSILENT" "$url"