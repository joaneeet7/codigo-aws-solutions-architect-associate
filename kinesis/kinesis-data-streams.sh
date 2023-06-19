#!/bin/bash

# obtiene la versión de la CLI de AWS
aws --version

# PRODUCER

# CLI v2
aws kinesis put-record --stream-name DemoStream --partition-key user1 --data "user signup" --cli-binary-format raw-in-base64-out

# CLI v1
aws kinesis put-record --stream-name DemoStream --partition-key user1 --data "user signup"


# CONSUMER 

# describe el stream
aws kinesis describe-stream --stream-name DemoStream

# consume datos
aws kinesis get-shard-iterator --stream-name DemoStream --shard-id shardId-000000000000 --shard-iterator-type TRIM_HORIZON

aws kinesis get-records --shard-iterator <>