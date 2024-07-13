terraform {
  required_version = ">=1.0"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.38.0"
    }
  }
  backend "s3" {
    profile = "terraform-curso"
    bucket  = "dennisremotestatecurso"
    key     = "commands-terraform-1/terraform.tfstate"
    region  = "us-east-1"
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
