packer {
  required_version=">=1.7.7"
  required_plugins {
    azure = {
      version = ">= 1.4.2"
      source  = "github.com/hashicorp/azure"
    }
  }
}
