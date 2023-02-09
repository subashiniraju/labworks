resource "azurerm_resource_group" "example" {
name = var.rgname
location = var.loc
  }

resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  address_space       = var.vnetadd
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  for_each = var.subnets
  name                 = each.value["name"]
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = each.value["address_prefixes"]
}