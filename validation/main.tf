resource "azurerm_resource_group" "exampl" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_managed_disk" "exampl" {
  name                 = var.diskname
  location             = azurerm_resource_group.exampl.location
  resource_group_name  = azurerm_resource_group.exampl.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

 
}