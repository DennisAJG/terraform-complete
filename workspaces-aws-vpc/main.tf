terraform {
  required_version = ">=1.7.4"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "s3" {
    profile = "terraform-curso"
    bucket  = "dennisremotestatecurso"
    key     = "workspaces/terraform.tfstate"
    region  = "us-east-1"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "dennisremotestatecurso"
    key = "aws_vpc/terraform.tfstate"
    region = "us-east-1"
  }
}