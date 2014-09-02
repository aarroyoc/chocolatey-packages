#Install Azpazeta
$url = "http://launchpad.net/azpazeta/2.0-juno/2.0.75-final/+download/AZPINSTALL.msi"

Install-ChocolateyPackage "azpazeta" "msi" "/quiet" "$url"