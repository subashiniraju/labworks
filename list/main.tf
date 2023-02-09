resource "azurerm_resource_group" "example11" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_managed_disk" "example11" {
for_each = toset(var.diskname)
  name                 = each.key
  location             = azurerm_resource_group.example11.location
  resource_group_name  = azurerm_resource_group.example11.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

 }