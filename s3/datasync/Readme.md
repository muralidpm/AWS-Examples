## create two S3 buckets for source and target 

aws s3 mb s3://sourcebucket-kmd

aws s3 mb s3://targetbucket-kmd 

touch hello.txt 

aws s3 cp hello.txt s3://sourcebucket-kmd/data/hello.txt 