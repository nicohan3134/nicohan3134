.SYNOPSIS
    This PowerShell script enables PowerShell script block logging, recording all executed script content to the Windows event log.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-23-04
    Last Modified   : 2026-23-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000326

# Logs all PowerShell script block content to the event log for auditing
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "EnableScriptBlockLogging" -Value 1 -Type DWord
