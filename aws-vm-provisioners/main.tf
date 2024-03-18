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
    key    = "aws_vm_provisioners/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "terraform-curso"

  default_tags {
    tags = {
      owner      = "dennis gusmão"
      managed-by = "terraform"
    }
  }
}

# Utilizando o data source para coletar um recurso (backend) já criado na AWS
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "awsterraformremotestatedennis20240228114918186300000001"
    key    = "aws_vpc/terraform.tfstate"
    region = "us-east-1"
  }
}