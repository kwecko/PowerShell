# Script que informa qual o IP do servidor de DNS padrão do sistema

# Metodo 01
#(Get-DnsClientServerAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -eq $(Get-NetIPAddress | Where-Object {$_.AddressState -eq "Preferred" -and $_.ValidLifetime -lt "24:00:00"}).InterfaceAlias }).ServerAddresses

# Metodo 02
(Get-DnsClientServerAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceIndex -eq $(Get-NetIPConfiguration | Foreach IPv4DefaultGateway).ifIndex}).ServerAddresses
