.SYNOPSIS
    This PowerShell script disables autorun commands from executing automatically when removable media is connected.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-22-04
    Last Modified   : 2026-22-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000185

# Disables autorun commands from executing automatically on removable media
$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "NoAutorun" -Value 1 -Type DWord
