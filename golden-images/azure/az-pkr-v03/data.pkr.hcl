#refer previously created base image from HCP registry


data "hcp-packer-iteration" "ubuntu22-nginx" {
  bucket_name = var.pkr_bucket_name
  channel = var.channel
}

data "hcp-packer-image" "ubuntu22-nginx" {
  bucket_name    = var.pkr_bucket_name
  iteration_id = data.hcp-packer-iteration.ubuntu22-nginx.id
  cloud_provider = var.cloud_provider
  region         = var.az_region_parent_img
}