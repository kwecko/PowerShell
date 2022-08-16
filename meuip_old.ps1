# Script que informa qual o IP padrão do sistema
(Get-NetIPAddress | Where-Object {$_.AddressState -eq "Preferred" -and $_.ValidLifetime -lt "24:00:00"}).IPAddress
