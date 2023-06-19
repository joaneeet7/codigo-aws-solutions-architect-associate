import json
import boto3

ssm = boto3.client('ssm', region_name="us-east-1")

def lambda_handler(event, context):
    db_url = ssm.get_parameters(Names=["/mi-app/dev/db-url"])
    print(db_url)   
    db_password = ssm.get_parameters(Names=["/mi-app/prod/db-password"], WithDecryption=True)
    print(db_password)
    return "worked!"
