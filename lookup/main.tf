locals {
    tags = {
    env = "prod"
    owner = "tsteam"
    }
}
resource "azurerm_resource_group" "example" {
  name =   var.rgname["qa"]  #lookup(var.rgname, "uat")
  location = tolist(var.loc)[2]
  #location = #element(var.loc,2)  
  tags = local.tags
}