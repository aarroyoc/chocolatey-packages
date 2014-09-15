$url= "https://bitbucket.org/jerzykozera/zeal-win32-binary-downloads/downloads/zeal-20140620.zip"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$zealdir = "${Env:ProgramFiles(x86)}"
}else{
	$zealdir = "${Env:ProgramFiles}"
}
Install-ChocolateyZipPackage "zeal" $url "$zealdir"
$startMenu = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Programs))
$zealStartMenuGroup = Join-Path $startMenu "Zeal"
New-Item $zealStartMenuGroup -type directory -force
$startMenuLink = Join-Path $zealStartMenuGroup "zeal.lnk"
Install-ChocolateyShortcut -shortcutFilePath $startMenuLink -targetPath "$zealdir\zeal\zeal.exe"