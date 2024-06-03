resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.environment}"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  count = var.environment == "dev" ? 0 : 1 #se varaivel for igual a dev, crie 0, se não, crie 1 recurso

  name                     = "dennisgusmao${var.environment}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = var.environment == "prod" ? "Premium" : "Standard" # igual
  account_replication_type = var.environment != "prod" ? "LRS" : "RAGZRS" # diferente 

  tags = local.common_tags
}