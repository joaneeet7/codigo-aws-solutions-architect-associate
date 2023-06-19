# en ambas instancias:
sudo yum install -y amazon-efs-utils
sudo mkdir /efs
sudo mount -t efs fs-yourid:/ /efs

# ¡ahora puedes escribir archivos en /efs y estarán disponibles en tus dos instancias ec2!