resource "azurerm_resource_group" "exam1" {
  name     = "nullrg"
  location = "West Europe"
}
resource "null_resource" "name1" {
    triggers = {
      id = timestamp()//it excutes every seconds
    }
    provisioner "local-exec" {
        interpreter = ["powershell", "-command"]
        command = <<-EOT
        new-item -name file1.txt -type file -path .
        get-service | out-file out.txt
        EOT
    }
  
}