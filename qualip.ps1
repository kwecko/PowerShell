
# Script que informa qual o IP de uma determinado servidor/URL
param($URLNAME)
if($URLNAME -eq $null) {
  Write-Output "URL não informada"
  exit 1
}
([System.Net.DNS]::GetHostAddresses($URLNAME) | Where-Object {$_.AddressFamily -eq "InterNetwork"} | select-object IPAddressToString)[0].IPAddressToString