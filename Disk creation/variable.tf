variable "organization" {
  type = string
}
variable "environment" {
  type = string
}
variable "application" {
  type = string
}

variable "rgname" {
    type = string
 }
variable "location" {
  type = string
}
variable "tagging" {
    type = map
    
}
variable "diskname" {
    type = list
    }
 variable "storage_account_type" {
  type = string
  
}
variable "create_option" {
  type = string

}
variable "disk_size_gb" {
  type = number
  
}
  
