terraform {
  required_version = ">= 1.0.0"

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
    key                  = "azure-vm-modulos-remotos/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}


module "network" {
  source = "Azure/network/azurerm"
  version = "5.2.0"

  resource_group_name = azurerm_resource_group.resource_group.name
  use_for_each = true
  vnet_name = "vnet-${var.environment}" 
  subnet_names = ["subnet-${var.environment}"]
  tags =  local.common_tags
}