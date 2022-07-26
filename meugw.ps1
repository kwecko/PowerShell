# Script que informa qual e o Gateway default do sistema
(Get-NetIPConfiguration | Foreach IPv4DefaultGateway).NextHop
