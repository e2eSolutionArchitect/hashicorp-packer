packer {
  required_plugins {
    azure = {
      version = ">= 1.4.2"
      source  = "github.com/hashicorp/azure"
    }
  }
}

source "azure-arm" "ubuntu" {
  client_id           = "c13cc349-754a-4e1c-894f-d00be091cd45"
  subscription_id = "bf793555-a4bc-42e3-a520-49d84c859f19"
  client_secret = "RDq8Q~Oo7keC4PYM1a1K__zxW6GpFbFgNZz-Mbz5"
  tenant_id = "28c0a11c-225f-40f5-bb91-6f1290662752"

  resource_group_name = "packer-demo"
  storage_account     = "e2esapackerimages"

  capture_container_name = "images"
  capture_name_prefix    = "packer"

  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "UbuntuServer"
  image_sku       = "22.04-LTS"

  location = "East US"
  vm_size  = "Standard_B1s"
  azure_tags = {
    project = "e2esademo"
  }
}


build {
  name = "e2esa-packer-build"
  sources = [
    "source.azure-arm.ubuntu"
  ]
  provisioner "shell" {
    environment_vars = [
      "TEMP=hello world",
    ]
    inline = [
      "echo Installing nginx",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo ufw allow proto tcp from any to any port 22,80,443",
      "echo 'y' | sudo ufw enable",
      "echo \"Variable value is $TEMP\" > demo.txt"
    ]
  }

  //post-processor "vagrant" {}
  //post-processor "compress" {}

}
