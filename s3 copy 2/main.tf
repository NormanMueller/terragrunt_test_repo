provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "bb" {
  bucket = "my-tf-test-bucket-norm-norm23"
}