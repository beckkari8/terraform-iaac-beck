terraform {
backend "s3" {
bucket = "beck-terraform-eks"
key = "application/us-east-1/state/qa/infrastructure.tfstate_ohio"
region = "us-east-1"
  }
}
