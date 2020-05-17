terraform {
backend "s3" {
bucket = "sdlc-beck-qa"
key = "vet/us-east-2/sharedtools/QA/infrastructure.tfstate"
region = "us-east-2"
  }
}
