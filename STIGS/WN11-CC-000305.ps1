.SYNOPSIS
    This PowerShell script prevents Windows Search from indexing encrypted files.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-23-04
    Last Modified   : 2026-23-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000305

# Prevents Windows Search from indexing encrypted files, reducing data exposure risk
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "AllowIndexingEncryptedStoresOrItems" -Value 0 -Type DWord
