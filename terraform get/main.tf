terraform {
  required_version = ">=1.7.4"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "terraform-curso"

  default_tags {
    tags = {
      owner      = "dennisgusmao"
      managed-by = "terraform"
    }
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
}

