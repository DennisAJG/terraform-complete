terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = ""
    }
  }

  backend "azurerm" {
    resource_group_name = ""
    storage_account_name = ""
    container_name = ""
    key = ""
}
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "name" {
  
}

