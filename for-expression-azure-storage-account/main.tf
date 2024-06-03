terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.48.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-terraform-state"
    storage_account_name = "danielgilterraformstate"
    container_name = "remote-state"
    key = "for-expression/terraform.tfstate"
  }
}


provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = "true"
}

#OBS: A Azure não permite criar tags padrões dentro do bloco Main