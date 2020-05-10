
terraform {
  required_version = "0.11.14"
  backend "s3" {
    bucket = "state-class-beck"
    key    = "vpc_task/key"
    region = "us-east-1"
    //dynamodb_table = "beck_table"
  }
}