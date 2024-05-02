terraform {
  required_version = ">= 1.3.0"

required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "4.60.0"
  }

  azurerm = {
    source = "hashicorp/azurerm"
    version = ">=3.48.0"
  }
}
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform-curso"

  default_tags {
    tags = {
      owner = "dennisgusmao"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}