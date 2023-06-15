#refer previously created base image from HCP registry

// data "hcp-packer-image" "ubuntu20-base" {
//   bucket_name    = "ubuntu16-base"
//   channel        = "development"
//   cloud_provider = "azure"
//   region         = var.az_region
// }