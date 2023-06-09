packer {
  required_version = ">= 1.7.2"
  required_plugins {
    amazon = {
      version = ">= 1.2.6"
      source  = "github.com/hashicorp/amazon"
    }
    azure = {
      version = ">= 1.4.2"
      source  = "github.com/hashicorp/azure"
    }
    googlecompute = {
      version = ">= 1.1.1"
      source  = "github.com/hashicorp/googlecompute"
    }
    windows-update = {
      version = "0.14.3"
      source  = "github.com/rgl/windows-update"
    }
    docker = {
      version = "1.0.8"
      source  = "github.com/hashicorp/docker"
    }    
  }
}



// NOTE:
// - In a single packer file more than one images can be built. Such as build for AWS, azure, GCP together
// - Define the separate plugin for amazon, azure, googlecompute under "required_plugins" for building multiple cloud images
// - Define separate sources
// - Under build add all sources in "sources []" list. 

********************Changes in progress***********************

source "amazon-ebs" "ubuntu" {
  profile       = "e2esaprofile"
  ami_name      = "e2esa-aws-ubuntu-golden"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "ami-053b0d53c279acc90"
  ssh_username  = "ubuntu"
}

source "azure-arm" "ubuntu" {
  client_id           = "fe354398-d7sf-4dc9-87fd-c432cd8a7e09"
  resource_group_name = "packerdemo"
  storage_account     = "virtualmachines"

  capture_container_name = "images"
  capture_name_prefix    = "packer"

  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "UbuntuServer"
  image_sku       = "14.04.4-LTS"

  location = "West US"
  vm_size  = "Standard_A2"
}

source "googlecompute" "ubuntu" {
    account_file = "account.json"
    project_id = "my-project"
    source_image = "debian-7-wheezy-v20150127"
    zone = "us-central1-a"
  }


build {
  name = "e2esa-packer-build"
  sources = [
    "source.amazon-ebs.ubuntu",
    "source.azure-arm.ubuntu",
    "source.googlecompute.ubuntu"
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

  post-processor "vagrant" {}
  post-processor "compress" {}

}



