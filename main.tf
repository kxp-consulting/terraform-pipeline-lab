terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "bankme-tfstate"
    key    = "tfstate/current.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  version = "~> 4.0"
}

resource "aws_vpc" "test" {
  cidr_block = "10.199.199.0/24"
  tags = {
    "description" = "vpc de teste do iac"
  }
}

