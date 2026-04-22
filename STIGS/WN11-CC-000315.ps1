# Prevents Windows Installer from always granting elevated privileges during installs
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "AlwaysInstallElevated" -Value 0 -Type DWord
