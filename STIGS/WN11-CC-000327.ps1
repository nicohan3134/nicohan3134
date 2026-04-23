.SYNOPSIS
    This PowerShell script enables PowerShell transcription, capturing all PowerShell input and output to a log file for auditing purposes.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-23-04
    Last Modified   : 2026-23-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000327

# Records all PowerShell input and output to a transcript file for auditing
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "EnableTranscripting" -Value 1 -Type DWord
