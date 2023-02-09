resource "azurerm_resource_group" "vrg1" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "vrg1" {
  name                = var.vnetname
  address_space       = var.address_space
  location            = azurerm_resource_group.vrg1.location
  resource_group_name = azurerm_resource_group.vrg1.name
}

resource "azurerm_subnet" "vrg1" {
  for_each = var.subnetnames
  name                =  each.value["name"]
  resource_group_name  = azurerm_resource_group.vrg1.name
  virtual_network_name = azurerm_virtual_network.vrg1.name
  address_prefixes     = each.value["address_prefixes"]
}