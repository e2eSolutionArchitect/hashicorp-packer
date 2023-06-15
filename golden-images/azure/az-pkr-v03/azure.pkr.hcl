

# Note: 
# - Using DR stratery for the images. the same image build will be in multiple regions
# - If 'shared_image_gallery_destination' is used then multiple source block copy is not required. "replication_regions": ["regionA", "regionB", "regionC"] will do the task
# - HCP Packer has been used in build to register images in HCP Packer registry 

source "azure-arm" "ubuntu18-useast" {
  client_id       = var.client_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  //---------------------
  // Managed Image configuration will not need the storage account. It will store the image under resource group
  managed_image_resource_group_name = var.resource_group_name
  managed_image_name                = "${var.image_name}-${var.image_version}-${local.timestamp}"
  
  # when using hcp packer data
  //managed_image_name                = data.hcp-packer-image.ubuntu16-base.labels.managed_image_name
  //managed_image_resource_group_name = data.hcp-packer-image.ubuntu16-base.labels.managed_image_resourcegroup_name
  
  
  //---------------------
  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "UbuntuServer"
  image_sku       = var.image_sku_ubuntu

  location = var.az_region_useast
  vm_size  = var.vm_size
  azure_tags = {
    project = "e2esademo"
    build-time = local.timestamp
  }


}


source "azure-arm" "ubuntu18-uswest" {
  client_id       = var.client_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  //---------------------
  // Managed Image configuration will not need the storage account. It will store the image under resource group
  managed_image_resource_group_name = var.resource_group_name
  managed_image_name                = "${var.image_name}-${var.image_version}-${local.timestamp}"
  
  # when using hcp packer data
  //managed_image_name                = data.hcp-packer-image.ubuntu16-base.labels.managed_image_name
  //managed_image_resource_group_name = data.hcp-packer-image.ubuntu16-base.labels.managed_image_resourcegroup_name
  
  
  //---------------------
  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "UbuntuServer"
  image_sku       = var.image_sku_ubuntu

  location = var.az_region_uswest
  vm_size  = var.vm_size
  azure_tags = {
    project = "e2esademo"
    build-time = local.timestamp
  }


}



