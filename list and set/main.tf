variable "testing" {
    type = set(any)
    default = ["disk1","disk2","disk4","disk2","disk5"]
  
}

output "result" {
    value = var.testing
  
}
output "secondelement" {
    value = tolist(var.testing)[2]

  
}