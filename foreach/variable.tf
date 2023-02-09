variable "rgname" {
    default = "looprg1"
}

variable "loc" {
    default = "west us"
    }
variable "vnetname" {
    default = "loopvnet"
    }
variable "vnetadd" {
    default = ["13.0.0.0/16"]
    }
variable "subnets" {
    type = map
    default = {
      subnet1 = {
        name = "appsubnet"
        address_prefixes = ["13.0.0.0/24"]
      }
      subnet4 = {
        name = "testsubnet"
        address_prefixes = ["13.0.5.0/24"]
      }
      subnet2 = {
        name = "dbsubnet"
        address_prefixes = ["13.0.1.0/24"]
      }
      subnet3 = {
        name = "websubnet"
        address_prefixes = ["13.0.2.0/24"]
      }
}
}