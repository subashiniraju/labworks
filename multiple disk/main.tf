resource "azurerm_resource_group" "drg" {
  name     = "diskrg1"
  location = "East US"
}

resource "azurerm_managed_disk" "drg1" {
  count= length(var.diskname)
  name                 = var.diskname[count.index]
  location             = azurerm_resource_group.drg.location
  resource_group_name  = azurerm_resource_group.drg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}