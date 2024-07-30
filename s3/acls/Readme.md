## create bucket 

aws s3api create-bucket --bucket kmd-bucket-1 --region us-east-1

## turn off block publi access for ACLs

aws s3api put-public-access-block --bucket kmd-bucket-1 --public-access-block-configuration BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true

## Change bucket ownership 

aws s3api put-bucket-ownership-controls --bucket kmd-bucket-1 --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"