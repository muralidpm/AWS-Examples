## create buckets
````sh 
aws s3 mb s3://prefix-murali 


## create folders 
`````sh
aws s3api put-object --bucket="prefix-murali" --key="hello/" 

aws s3api pu