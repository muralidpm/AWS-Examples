## create a bucket

aws s3 mb s3://metadata-kmd

## Create a new file
echo "hi there" > hello.txt


## upload a file with metadata 
aws s3api put-object --bucket metadata-kmd --key hello.txt --body hello.txt --metadata FileCreator=Murali

## Get metadata object 
aws s3api head-object --bucket metadata-kmd --key hello.txt