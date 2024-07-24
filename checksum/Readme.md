## create a new s3 bucket 

```md 
aws s3 mb s3://checksum-example
```echo
echo "here is the checksum example" > myfile.txt 
`````
##Upload our file and look at its etag
aws s3 cp myfile.txt s3://checksum-example
aws s3api head-object --bucket checksum-example --key myfile.txt

#Lets upload a file with different kind of checksum 
````sh 
sudo apt-get install crc32
sudo apt install rhash
rhash --crc32 --simple myfile.txt 
`````

````sh 
aws s3api put-object \
--bucket="checksum-example" \
--key="myfilecrc32.txt" \
--body="myfilec.txt" \
--checksum-algorithm="CRC32" \
--checksum-crc32=33bd65e5
