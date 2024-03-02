terraform {
  required_version = ">=1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.48.0"
    }
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

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}

