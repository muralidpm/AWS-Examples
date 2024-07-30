## create bucket 
aws s3 mb s3://kmd-bucket1

## create a file 

echo "hello kmd" > hello.txt 
aws s3 cp hello.txt s3://kmd-bucket1 --storage-class 

## clean up 

aws s3 rm s3://kmd-bucket1/hello.txt
aws s3 rm s3://kmd-bucket1
