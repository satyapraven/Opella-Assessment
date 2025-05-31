terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket  = "dev-terra-s3-backend"
    key     = "state/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    # No dynamodb_table here — so no locking
  }
}

