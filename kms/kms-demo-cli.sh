# 1) cifrar
aws kms encrypt --key-id alias/tutorial --plaintext fileb://ExampleSecretFile.txt --output text --query CiphertextBlob --region us-east-1 > ExampleSecretFileEncrypted.base64

# descodificación base64 para Linux o Mac OS 
cat ExampleSecretFileEncrypted.base64 | base64 --decode > ExampleSecretFileEncrypted

# descodificación base64 para Windows
certutil -decode .\ExampleSecretFileEncrypted.base64 .\ExampleSecretFileEncrypted


# 2) descifrar

aws kms decrypt --ciphertext-blob fileb://ExampleSecretFileEncrypted   --output text --query Plaintext > ExampleFileDecrypted.base64  --region us-east-1

# descodificación base64 para Linux o Mac OS 
cat ExampleFileDecrypted.base64 | base64 --decode > ExampleFileDecrypted.txt


# descodificación base64 para Windows
certutil -decode .\ExampleFileDecrypted.base64 .\ExampleFileDecrypted.txt