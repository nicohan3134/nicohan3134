.SYNOPSIS
    This PowerShell script prevents Windows from downloading print driver packages over HTTP.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-22-04
    Last Modified   : 2026-22-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000100

# Prevents Windows from downloading print drivers over HTTP
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "DisableWebPnPDownload" -Value 1 -Type DWord
