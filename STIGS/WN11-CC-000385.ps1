.SYNOPSIS
    This PowerShell script prevents Windows Ink Workspace from being accessible above the lock screen.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-23-04
    Last Modified   : 2026-23-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000385

# Prevents Windows Ink Workspace from being accessible on the lock screen
$path = "HKLM:\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "AllowWindowsInkWorkspace" -Value 1 -Type DWord
