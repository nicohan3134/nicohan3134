.SYNOPSIS
   This PowerShell script disables the ability to print over HTTP, preventing the client from sending print jobs to internet-based printers.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-22-04
    Last Modified   : 2026-22-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000110

# Blocks the client from printing to internet-based printers over HTTP
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "DisableHTTPPrinting" -Value 1 -Type DWord
