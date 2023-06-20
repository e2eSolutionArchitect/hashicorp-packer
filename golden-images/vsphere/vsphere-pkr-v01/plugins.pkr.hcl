packer {
  required_version = ">=1.7.7"
  required_plugins {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.0.2"
    }
  }
}

# Connect to VMware vSphere vCenter
provider "vsphere" {
  vim_keep_alive = 30
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_vcenter
  # If you have a self-signed cert
  allow_unverified_ssl = var.vsphere-unverified-ssl
}
