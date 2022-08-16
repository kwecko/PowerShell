# Script que informa qual o IPv4 padrão do sistema
(Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceIndex -eq $(Get-NetIPConfiguration | Foreach IPv4DefaultGateway).ifIndex}).IPAddress
