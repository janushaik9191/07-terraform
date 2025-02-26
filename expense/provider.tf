terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
  backend "s3" {
    bucket         = "daws-s3-remote"
    key            = "expense-ec2s-r53s"
    region         = "us-east-1"
    dynamodb_table = "daws-dynamodb"
  }
}
provider "aws" {
  region = "us-east-1"
}