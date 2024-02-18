terraform {
  backend "s3" {
    bucket = "busolag"
    key = "busolag/state.tfstate"
    region = "us-east-1"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
}
