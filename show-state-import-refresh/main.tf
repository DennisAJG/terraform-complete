terraform {
  required_version = ">=1.0"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.38.0"
    }
  }

  backend "s3" {
    bucket = "awsterraformremotestatedennis20240228114918186300000001"
    key    = "commands/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "default"

  default_tags {
    tags = {
      owner      = "dennis gusmão"
      managed-by = "terraform"
    }
  }
}
