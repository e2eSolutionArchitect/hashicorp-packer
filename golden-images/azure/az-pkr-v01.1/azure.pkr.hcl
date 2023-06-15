
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

  image_publisher = "canonical" //"Canonical"
  image_offer     = "0001-com-ubuntu-server-jammy" //"UbuntuServer"
  image_sku       = var.image_sku_ubuntu


  shared_image_gallery_destination {
    subscription         = var.subscription_id
    resource_group       = var.resource_group_name
    gallery_name         = var.az_image_gallery
    image_name           = "${var.image_name}-${var.image_version}-${local.timestamp}"
    image_version        = formatdate("YYYY.MMDD.hhmm", timestamp())
    replication_regions  = var.az_regions
    storage_account_type = "Standard_LRS"
  }

  azure_tags = {
    project    = "e2esademo"
    build-time = local.timestamp
  }

}