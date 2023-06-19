# OBTENER PARÁMETROS
aws ssm get-parameters --names /mi-app/dev/db-url /mi-app/dev/db-password
# OBTENER PARÁMETROS CON DESCIFRADO
aws ssm get-parameters --names /mi-app/dev/db-url /mi-app/dev/db-password --with-decryption

# OBTENER PARÁMETROS POR RUTA
aws ssm get-parameters-by-path --path /mi-app/dev/
# OBTENER PARÁMETROS POR RUTA RECURSIVA
aws ssm get-parameters-by-path --path /mi-app/ --recursive
# OBTENER PARÁMETROS POR RUTA CON DESCIFRADO
aws ssm get-parameters-by-path --path /mi-app/ --recursive --with-decryption