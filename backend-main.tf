terraform {
  backend "s3" {
    bucket = "dev-terra-s3-backend"
    key    = "terraform/state/main.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

