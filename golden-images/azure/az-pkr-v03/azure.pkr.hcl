

# Note: 
# - Using DR stratery for the images. the same image build will be in multiple regions
# - If 'shared_image_gallery_destination' is used then multiple source block copy is not required. "replication_regions": ["regionA", "regionB", "regionC"] will do the task
# - HCP Packer has been used in build to register images in HCP Packer registry 

source "azure-arm" "ubuntu22" {
  os_type                   = "Linux"
  build_resource_group_name = var.resource_group_name
  vm_size                   = var.vm_size

  client_id       = var.client_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id


  managed_image_resource_group_name = var.resource_group_name
  managed_image_name                = "${var.image_name}-${var.image_version}-${local.timestamp}"

  custom_managed_image_resource_group_name = data.hcp-packer-image.ubuntu22-nginx.labels.managed_image_resourcegroup_name
  custom_managed_image_name                = data.hcp-packer-image.ubuntu22-nginx.labels.managed_image_name


  shared_image_gallery_destination {
    resource_group       = var.resource_group_name
    gallery_name         = var.az_image_gallery
    image_name           = var.az_gallery_img_def_name
    image_version        = formatdate("YYYY.MMDD.hhmm", timestamp())
    replication_regions  = var.az_regions
    storage_account_type = "Standard_LRS"
  }
  azure_tags = {
    project    = "e2esademo"
    build-time = local.timestamp
  }


}



