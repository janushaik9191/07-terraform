terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
  backend "s3" {
    bucket         = "daws-s3-remote"
    key            = "variables-demo"
    dynamodb_table = "daws-locking"
    region         = "us-east-1"
  }
}
provider "aws" {
  # configuration details
  region = "us-east-1"
}