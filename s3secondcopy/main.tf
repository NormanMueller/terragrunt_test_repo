provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bb" {
  bucket = "norm04112022-bambam2"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}