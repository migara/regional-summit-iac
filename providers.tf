terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.30.0"
    }
  }

  backend "s3" {
    bucket = "regional-training-2021-gh-actions"
    key    = "gh-actions-demo"
  }
}

provider "aws" {}
