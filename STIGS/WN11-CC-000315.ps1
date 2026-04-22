.SYNOPSIS
    This PowerShell script ensures that the Windows Installer 'Always install with elevated privileges' policy is disabled, 
    preventing installation packages from automatically receiving elevated system privileges and reducing the risk of privilege escalation attacks.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-22-04
    Last Modified   : 2026-22-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000315


# Prevents Windows Installer from always granting elevated privileges during installs
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "AlwaysInstallElevated" -Value 0 -Type DWord
