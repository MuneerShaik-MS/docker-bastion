terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.61.0"
    }
  }
  backend "s3" {
    bucket = "cloudk-remote-state"
    key    = "eks-bastion"
    region = "us-east-1"
    dynamodb_table = "cloudK-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}