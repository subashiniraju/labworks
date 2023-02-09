variable "rgname" {
    type = map
  default = {
    dev = "dev-rg"
    qa = "qa-rg"
    uat = "uat-rg"
    prod = "prod-rg"
  }
}

variable "loc" {
  type = set(any)
  default = ["East US", "West US", "UK South"]
}
variable "tags" {
    type = map
    default = {
        env = "prod"
        owner = "tsteam"
    }
}