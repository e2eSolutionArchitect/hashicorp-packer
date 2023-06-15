
# Common
variable "client_id" {
  type        = string
  description = "Azure Service Principal App ID."
  sensitive   = true
}

variable "client_secret" {
  type        = string
  description = "Azure Service Principal Secret."
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID."
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID."
  sensitive   = true
}
variable az_region_useast {
  type = string
}
variable az_region_uswest {
  type = string
}
variable az_region_parent_img {
  type = string
}
variable pkr_bucket_name {
  type = string
}
variable cloud_provider {
  type = string
}

variable channel {
  type    = string
  default = "latest"
}

variable az_regions {
  type    = list(string)
  default = ["East US"]
}

variable resource_group_name {
  type = string
}

variable owner {
  type = string
}

variable department {
  type = string
}

# Ubuntu

variable image_name {
  type = string
}
variable image_version {
  type = string
}
variable image_sku_ubuntu {
  type = string
}


variable storage_account {
  type = string
}

variable capture_name_prefix {
  type = string
}

variable vm_size {
  type = string
}


variable az_image_gallery {
  type = string
}