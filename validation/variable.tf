variable "rgname" {
  default = "testRG1"
  type = string
  sensitive = true

}
variable "loc" {
  default = "central canada"
  type = string
  validation {
    condition = contains (["east us","west us","Austraila East"],var.loc)
    error_message = "Invalid location,it should be one of east us,west us,Austraila East" 
  }

}
variable "diskname" {
  default = "managed disk"
}