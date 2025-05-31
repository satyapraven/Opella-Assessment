bucket = "dev-terra-s3-backend"   # Replace with your S3 bucket name
key    = "terraform/state/main.tfstate"       # Path inside the bucket for your state file
region = "us-east-1"                          # Replace with your AWS region
encrypt = true                                # Enable server-side encryption
