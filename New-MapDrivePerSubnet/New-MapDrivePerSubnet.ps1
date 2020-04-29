$ErrorActionPreference = "SilentlyContinue"

$Shell = New-Object -Com WScript.Shell
$Network = New-Object -Com WScript.Network
$UserName = $Network.UserName
$User = Get-ADUser -Indentity $UserName

$Computer = "."
$Nic = Get-CimInstance -Computer $computer -class Win32_NetworkAdapterConfiguration -Filter IPEnabled = "True"
Foreach ($Item in $colItems) {}
ForEach ($Address in $IPAddress) {
$IPAddress = Split($Address, ".")
If (($IPAddress[0] -ne 20) -And ($IPAddress[1] -ne 30)) {$Address = $IPAddress[2]}
}

If ($IPAddress[0] -EQ 20 -And $IPAddress[1] -EQ 30 -And $IPAddress[2] -EQ 40)

Get-PSDrive S | Remove-PSDrive
New-PSDrive -Name "S" -Root "\\wide\setup" -Persist -PSProvider "FileSystem"

Get-PSDrive J | Remove-PSDrive
New-PSDrive -Name "J" -Root "\\wide\jet" -Persist -PSProvider "FileSystem"

Get-PSDrive P | Remove-PSDrive
New-PSDrive -Name "P" -Root "\\wide\prog" -Persist -PSProvider "FileSystem"

If ($IPAddress[0] -EQ 20 -And $IPAddress[1] -EQ 30 -And $IPAddress[2] -EQ 50)

Get-PSDrive F | Remove-PSDrive
New-PSDrive -Name "F" -Root "\\wide\support" -Persist -PSProvider "FileSystem"

Get-PSDrive G | Remove-PSDrive
New-PSDrive -Name "G" -Root "\\wide\livedata" -Persist -PSProvider "FileSystem"

Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("All drives have now been mapped. Please click ok to continue")