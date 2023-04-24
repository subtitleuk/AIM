# Install Chocolatey
$env:ChocolateyInstall = "C:\ProgramData\chocoportable"
Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install choco packages
choco install openoffice --version=4.1.8 -y
choco install laps --version=6.2.0 -y
choco install microsoft-monitoring-agent --version=10.20.18011.0 -y
choco install azure-cli sqlserver-odbcdriver vcredist2008 mobaxterm jdk8 putty strawberryperl winscp firefox notepadplusplus googlechrome fslogix -y

# Set TimeZone
Set-TimeZone 'GMT Standard Time'

