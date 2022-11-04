
resource "aws_s3_bucket" "b" {
  bucket = "norm04112022-bam2"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}