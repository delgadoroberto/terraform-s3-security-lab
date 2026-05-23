#!/bin/bash

BUCKET_NAME=$1

echo "Checking bucket encryption..."
aws --endpoint-url=http://localhost:4566 s3api get-bucket-encryption \
  --bucket "$BUCKET_NAME"

echo "Checking bucket versioning..."
aws --endpoint-url=http://localhost:4566 s3api get-bucket-versioning \
  --bucket "$BUCKET_NAME"

echo "Checking public access block..."
aws --endpoint-url=http://localhost:4566 s3api get-public-access-block \
  --bucket "$BUCKET_NAME"
