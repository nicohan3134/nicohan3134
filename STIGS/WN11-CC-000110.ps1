

# Blocks the client from printing to internet-based printers over HTTP
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers"
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }
Set-ItemProperty -Path $path -Name "DisableHTTPPrinting" -Value 1 -Type DWord
