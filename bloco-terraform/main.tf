terraform {
  required_version = "1.3.0"
  #required_version = ">= 1.0.0, < 1.3.0" operador OU
  #required_version = ">= 1.0.0"
  #required_version = "!= 1.0.0"
  #required_version = "~> 1.0.0" desde a versão 1.0.0 até a versão 1.0.n (maior versão do escopo)

  required_providers {
    #pode ser usado quantos providers quiserem
    aws = {
        version = "1.0"
        source = "hashicorp/aws"
    }

    azurerm = {
        version = "2.0"
        source = "hashicorp/azurerm"
    }

  }

  backend "s3" {
    #configuração expecifica do backend
  }

  backend "azurerm" {
    #configuração expecifica do backend
  }
}