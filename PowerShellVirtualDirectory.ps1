Add-PSSnapin *ex*
#Virtuelles Verzeichnis "Powershell" neu erstellen
Get-PowerShellVirtualDirectory -Server hv-ex19-des | Remove-PowerShellVirtualDirectory
New-PowerShellVirtualDirectory -Server hv-ex19-des -Name Powershell
Get-PowerShellVirtualDirectory -Server hv-ex19-des | Set-PowerShellVirtualDirectory -RequireSSL:$false