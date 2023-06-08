packer {
  required_plugins {
    azure = {
      version = ">= 1.4.2"
      source  = "github.com/hashicorp/azure"
    }
  }
}

// source "azure-arm" "basic-example" {
//   client_id           = "fe354398-d7sf-4dc9-87fd-c432cd8a7e09"
//   resource_group_name = "packerdemo"
//   storage_account     = "virtualmachines"

//   capture_container_name = "images"
//   capture_name_prefix    = "packer"

//   os_type         = "Linux"
//   image_publisher = "Canonical"
//   image_offer     = "UbuntuServer"
//   image_sku       = "14.04.4-LTS"

//   location = "West US"
//   vm_size  = "Standard_A2"
// }

