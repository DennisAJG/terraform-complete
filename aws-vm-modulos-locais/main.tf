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
    key     = "aws_vm_modulos_locais/terraform.tfstate"
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

module "network" {
  source = "./network"

  cidr_vpc = "10.0.0.0/16"
  cidr_subnet_public = "10.0.1.0/24"
  cidr_subnet_private = var.cidr_private_subnet
  environment = var.environment
}