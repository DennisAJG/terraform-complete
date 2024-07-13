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
    key     = "providor/terraform.tfstate"
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

provider "aws" {
  # Configuration options
  alias = "eua"
  region  = "us-east-2"
  profile = "terraform-curso"

  default_tags {
    tags = {
      owner      = "dennisgusmao"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  # Configuration options
  alias = "australia"
  region  = "ap-southeast-2"
  profile = "terraform-curso"

  default_tags {
    tags = {
      owner      = "dennisgusmao"
      managed-by = "terraform"
    }
  }
}

module "vpc" {
  providers = {
    aws.provider_1 = aws.eua
    aws.provider_2 = aws.australia
  }

  source = "./vpc"
}