terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}

resource "aws_s3_bucket" "default" {
  bucket = "my-bucket-with-tf"  // Replace with a unique bucket name
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.bucket
  key    = "myfile.txt"
  source = "myfile.txt"
  etag = filemd5("myfile.txt")
}
