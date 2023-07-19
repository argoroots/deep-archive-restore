#!/bin/bash

aws s3api list-objects-v2 --bucket $1 --output text --query "Contents[?StorageClass=='DEEP_ARCHIVE']" | awk '{ $1=""; print $0 }' | awk 'NF{NF-=3};1' > request.txt

while read i; do
  echo "$i"
  aws s3api restore-object --bucket $1 --key "$i" --restore-request '{"Days":25,"GlacierJobParameters":{"Tier":"Bulk"}}'
done <request.txt
