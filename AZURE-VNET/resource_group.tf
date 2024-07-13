resource "azurerm_resource_group" "resource_group" {
  name     = "rg-vnet"
  location = var.location

  tags = local.common_tags
}