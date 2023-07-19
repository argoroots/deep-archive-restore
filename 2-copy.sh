#!/bin/bash

aws s3api list-objects-v2 --bucket $1 --output text --query "Contents[?StorageClass=='DEEP_ARCHIVE']" | awk '{ $1=""; print $0 }' | awk 'NF{NF-=3};1' > copy.txt

while read i; do
  aws s3 cp --storage-class GLACIER_IR --force-glacier-transfer "s3://$1/$i" "s3://$1/$i"
done <copy.txt
