resource "azurerm_resource_group" "rgvnet" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = azurerm_resource_group.rgvnet.location
  resource_group_name = azurerm_resource_group.rgvnet.name
  address_space       = var.address_space
}
 
 resource "azurerm_subnet" "subnets" {
  for_each = var.subnetname
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rgvnet.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes    =  each.value
 }
