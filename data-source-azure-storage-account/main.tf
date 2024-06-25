terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.48.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "dennisterraformstate"
    container_name       = "remote-state-azure"
    key                  = "data-source/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}