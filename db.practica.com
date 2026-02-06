$TTL 604800
@   IN  SOA ns1.practica.com. admin.practica.com. (
        2026020601 ; Serial
        3600 1800 604800 86400 )

; Servidor DNS
@       IN  NS  ns1.practica.com.

; Registros A (Las IPs)
ns1     IN  A   10.18.51.70  ; Tu servidor
www     IN  A   10.18.51.70  ; La web (tu servidor)
