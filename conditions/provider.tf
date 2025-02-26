terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
  backend "s3" {
    bucket         = "daws-s3-remote"
    key            = "condition-demo"
    dynamodb_table = "daws-dynamodb"
    region         = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}