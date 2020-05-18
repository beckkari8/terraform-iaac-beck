terraform {
backend "s3" {
bucket = "sdlc-beck-stage"
key = "vet/us-west-2/sharedtools/Stage-beck/beck.tfstate"
region = "us-west-2"
  }
}
