# generar claves de acceso root
aws configure --profile root-mfa-delete-demo

# activar mfa delete
aws s3api put-bucket-versioning --bucket mfa-demo-joan --versioning-configuration Status=Enabled,MFADelete=Enabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# desactivar mfa delete
aws s3api put-bucket-versioning --bucket mfa-demo-joan --versioning-configuration Status=Enabled,MFADelete=Disabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# ¡¡¡elimina las credenciales de root en la consola IAM!!!