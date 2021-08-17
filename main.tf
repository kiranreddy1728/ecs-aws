resource "aws_s3_bucket" "state-bucket" {
  bucket = "tf-state-bucket-1728"
  acl    = "private"

  tags = {
    Name        = "state bucket"
    Environment = "dev"
  }
}