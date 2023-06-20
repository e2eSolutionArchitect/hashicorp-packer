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
   /* docker = {
      version = "1.0.8"
      source  = "github.com/hashicorp/docker"
     }
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.0.2"
    }
    */    
  }
}
