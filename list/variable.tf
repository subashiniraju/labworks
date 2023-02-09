variable "rgname" {
    default = "listrg"
  
}
variable "loc" {
    default = "east us"
  
}
variable "diskname" {
    type = list
    default = ["osdisk1","disk01","datadisk2","webdisk3"]
}