## create bucket and create a policy to grant S3 access to that account 

aws s3 mb s3://kmd-bucket 

# apply the policy to S3 bucket 
aws s3api put-bucket-policy --bucket kmd-bucket --policy file://policy.json 