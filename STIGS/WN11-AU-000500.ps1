 <#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-22-04
    Last Modified   : 2026-22-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-AU-000500.ps1 
#>

# Define the registry path for the Application Event Log group policy setting
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

# Create the registry key if it does not already exist
if (-not (Test-Path $path)) {
    New-Item -Path $path -Force | Out-Null
}

# Set the MaxSize value to 0x8000 (32,768 KB / 32 MB) as a DWORD
Set-ItemProperty -Path $path -Name "MaxSize" -Value 0x8000 -Type DWord
