#!/bin/bash
echo "--- INSTALANDO DNS MAESTRO ---"

# 1. Instalar Bind9
apt update
apt install bind9 -y

# 2. Copiar los archivos de configuración
# (Asume que estás dentro de la carpeta del repo)
cp named.conf.local /etc/bind/
cp db.practica.com /etc/bind/
cp db.inversa /etc/bind/

# 3. Dar permisos y Reiniciar
chown bind:bind /etc/bind/db.*
systemctl restart bind9

# 4. Mostrar estado
systemctl status bind9 --no-pager
