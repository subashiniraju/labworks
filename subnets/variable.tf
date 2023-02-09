variable "rgname" {
  default = "looprg"
}
variable "loc" {
  default = "west us"
}
variable "vnetname" {
  default = "loopvnet"
}
variable "address_space" {

  default = ["10.0.0.0/16"]

}
variable "subnetnames" {
    type = map
    default = {
        subnet1 = {
            name = "appsubnet"
            address_prefixes = ["13.0.0.0/24"]
        }
        subnet2 = {
            name = "websubnet"
            address_prefixes = ["13.0.1.0/24"]
        }
        subnet3 = {
            name = "dbsubnet"
            address_prefixes = ["13.0.0.0/24"]
        }
    }
  
}