

source "azure-arm" "ubuntu22" {
  os_type                   = "Linux"
  build_resource_group_name = var.resource_group_name
  vm_size                   = var.vm_size

  client_id       = var.client_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  image_publisher = "Canonical"
  image_offer     = "0001-com-ubuntu-server-jammy" //"UbuntuServer"
  image_sku       = var.image_sku_ubuntu

  /*
Create a new shared image gallery in Azure Compute Gallery in the resource group.
Two components has to be created. Otherwise you will get error that gallery is not under respurce group 
- Image gallery  
- Image definition 
*/

  shared_image_gallery_destination {
    resource_group       = var.resource_group_name
    gallery_name         = var.az_image_gallery
    image_name           = var.az_gallery_img_def_name
    image_version        = formatdate("YYYY.MMDD.hhmm", timestamp())
    replication_regions  = var.az_regions
    storage_account_type = "Standard_LRS"
  }

  managed_image_name                = "${var.image_name}-${var.image_version}-${local.timestamp}"
  managed_image_resource_group_name = var.resource_group_name

  azure_tags = {
    project    = "e2esademo"
    build-time = local.timestamp
  }

}
