

# ¡no olvides el parámetro región! (asegúrate de que es la región adecuada)
aws s3 presign s3://mybucket/myobject --region my-region

# añade un tiempo de caducidad personalizado
aws s3 presign s3://mybucket/myobject  --expires-in 300 --region my-region


# SI TIENES PROBLEMAS 

# establece la versión de firma adecuada para no tener problemas al generar URLs para archivos encriptados
aws configure set default.s3.signature_version s3v4
