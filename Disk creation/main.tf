locals {
  prefix = "${var.organization}-${var.environment}-${var.application}"
}

resource "azurerm_resource_group" "ex4" {
  name     ="${local.prefix}-${var.rgname}"
  location = var.location
  tags = var.tagging
  }
resource "azurerm_managed_disk" "drg" {
  count= length(var.diskname)
  name                 = "${local.prefix}-${var.diskname[count.index]}"
  location             = azurerm_resource_group.ex4.location
  resource_group_name  = azurerm_resource_group.ex4.name
  storage_account_type = var.storage_account_type
  create_option        = var.create_option
  disk_size_gb         = var.disk_size_gb
  tags = var.tagging
}
