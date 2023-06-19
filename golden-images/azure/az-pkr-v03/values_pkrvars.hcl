subscription_id = "####-######-####-###-########"
tenant_id       = "####-######-####-###-########"
client_id       = "####-######-####-###-########"
client_secret   = "###############"

owner      = "e2esa"
department = "education"

# Ubuntu
image_name          = "az-packer"
image_version       = "v02"
resource_group_name = "packer-demo"
storage_account     = "e2esapackerimages"

image_sku_ubuntu    = "22_04-lts"
capture_name_prefix = "packer"
az_region_useast    = "East US"
az_region_uswest    = "West US 2"

vm_size = "Standard_B1s"

az_regions           = ["East US", "West US 2"]
az_region_parent_img = "eastus"
channel              = "base"
pkr_bucket_name      = "ubuntu22-nginx"
cloud_provider       = "azure"

az_image_gallery = "packer"
az_gallery_img_def_name = "ubuntu22"