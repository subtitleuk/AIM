mkdir c:\buildArtifacts
echo Azure-Image-Builder-Was-Here  > c:\buildArtifacts\azureImageBuilder.txt

# Set directory for installation - Chocolatey does not lock
# down the directory if not the default
$InstallDir='C:\ProgramData\chocoportable'
$env:ChocolateyInstall="$InstallDir"

# If your PowerShell Execution policy is restrictive, you may
# not be able to get around that. Try setting your session to
# Bypass.
Set-ExecutionPolicy Bypass -Scope Process -Force;

# All install options - offline, proxy, etc at
# https://chocolatey.org/install
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


choco install openoffice --version=4.1.8 -y
choco install laps --version=6.2.0 -y
choco install azure-cli -y
choco install microsoft-monitoring-agent --version=10.20.18011.0 -y
choco install sqlserver-odbcdriver -y
choco install vcredist2008 -y
choco install mobaxterm -y
choco install jdk8 -y
choco install putty -y
choco install splunk-universalforwarder -y
choco install strawberryperl -y
choco install nessus-agent -y
choco install winscp -y
choco install firefox -y
choco install notepadplusplus -y
