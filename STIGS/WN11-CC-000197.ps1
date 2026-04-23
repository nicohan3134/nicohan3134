.SYNOPSIS
    This PowerShell script disables Microsoft consumer experiences, including suggested apps and tips pushed through Windows CloudContent.

.NOTES
    Author          : Nicolas Hanna
    LinkedIn        : linkedin.com/in/nicolas--hanna/
    GitHub          : github.com/nicohan3134
    Date Created    : 2026-23-04
    Last Modified   : 2026-23-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000197

# Disables suggested apps, tips, and other consumer-oriented Microsoft content
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "DisableWindowsConsumerFeatures" -Value 1 -Type DWord
