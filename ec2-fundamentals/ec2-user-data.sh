#!/bin/bash
# Utiliza esto para tus datos de usuario
# Instala httpd (Version: Linux 2)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hola Mundo desde $(hostname -f)</h1>" > /var/www/html/index.html