resource "aws_s3_bucket" "s3bucket" {
  bucket = "my-tf-test-bucket-beck-february"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}