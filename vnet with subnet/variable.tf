variable "rgname" {
  default = "vetrg2"

}
variable "loc" {
 default = "west europe" 
}
variable "vnetname" {
  default = "vnet12"

}
variable "address_space" {
    type =  list
    default = ["10.0.0.0/16"]

  }
  variable "subnetname" {
    type = map
    default = {
        subnet1=["10.0.1.0/16"]
        subnet2=["10.0.2.0/16"]
        subnet3=["10.0.3.0/24"]
    }
  }