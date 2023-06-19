# Common

# Recource naming format <prefix>-<resource-name>-<suffix>

project       = "hcp-tf-demo"
prefix        = "vm"
suffix        = "01"
org_unit      = "E2ESA-DEMO"
business_unit = "SMB-INT" # SMB-INT - Small & Medium Business in Org, "SMB-EXTR" - SMB External
cost_center   = "CC-AZ0000"
appid         = "app001"
appname       = "sample-web"
desc          = "A sample web app project for e2esa demo"
tier          = "web" # Web/App/DB
#env = "" should be entered during execution. 

# General 
location = "eastus"

# Packer Image Data
channel              = "production"
pkr_bucket_name      = "ubuntu22-nginx"
cloud_provider       = "azure"
az_region_parent_img = "eastus"

# Linum VM
vnet_name         = "pkr_vnet"
subnet_name       = "pkr_subnet"
az_public_ip_name = "pkrVMPublicIP"
az_nsg_name       = "pkrNSG"
az_nic_name       = "pkrnic"
az_vm_name        = "vmName"