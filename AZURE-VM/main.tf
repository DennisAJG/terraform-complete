terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "dennisterraformstate"
    container_name       = "remote-state-azure"
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
    skip_provider_registration = "true"

}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name = "rg-terraform-state"
    storage_account_name = "dennisterraformstate"
    container_name = "remote-state-azure"
    key = "azure-vnet/terraform.tfstate"
  }
}