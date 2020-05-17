terraform {
backend "s3" {
bucket = "sdlc-beck-stage"
key = "vet/us-west-2/sharedtools/Stage/stage.tfstate"
region = "us-west-2"
  }
}
