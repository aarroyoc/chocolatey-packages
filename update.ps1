#Update ALL Chocolatey Recipes
#choco update all
#choco install nuget.commandline
#nuget SetApiKey [API_KEY_HERE] -source http://chocolatey.org/
#choco install PACKAGE -source '%cd%' -force
choco pack azpazeta/azpazeta.nuspec
choco push azpazeta*.nupkg