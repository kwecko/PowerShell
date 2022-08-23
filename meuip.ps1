# Script que informa qual o IPv4 padrão do sistema

# Metodo 01
# (Get-NetIPAddress | Where-Object {$_.AddressState -eq "Preferred" -and $_.ValidLifetime -lt "24:00:00"}).IPAddress

# Metodo 02
(Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceIndex -eq $(Get-NetIPConfiguration | Foreach IPv4DefaultGateway).ifIndex}).IPAddress
