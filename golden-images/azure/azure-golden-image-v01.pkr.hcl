packer {
  required_plugins {
    azure = {
      version = ">= 1.4.2"
      source  = "github.com/hashicorp/azure"
    }
  }
}

source "azure-arm" "ubuntu" {
  client_id           = "####-####-####-####-####"
  subscription_id = "####-####-####-####-####"
  client_secret = "####-####-####-####-####"
  tenant_id = "####-####-####-####-####"

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
