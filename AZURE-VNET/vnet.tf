resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-terraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = ["10.0.0.0/16"]

  tags = local.common_tags
}


