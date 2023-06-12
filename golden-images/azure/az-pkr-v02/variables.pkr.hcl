
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


variable resource_group_name {
  type = string
}



# Ubuntu
variable primary_location {
  type = string
}
variable image_name {
  type = string
}
variable image_version {
  type = string
  validation {
    condition     = length(var.image_version) > 4 && substr(var.image_version, 0, 4) == "2023"
    error_message = "The image_version value must be a valid image_version, starting with \"year-\"."
  }
}

variable storage_account {
  type = string
}
variable image_sku {
  type = string
}
variable capture_name_prefix {
  type = string
}
variable location {
  type = string
}
variable vm_size {
  type = string
}


# Windows 11
variable "artifacts_resource_group" {
  type        = string
  description = "Packer Artifacts Resource Group."
}

variable "image_publisher_win11" {
  type        = string
  description = "Windows Image Publisher."
}

variable "image_offer_win11" {
  type        = string
  description = "Windows Image Offer."
}

variable "image_sku_win11" {
  type        = string
  description = "Windows Image SKU."
}

variable "image_version_win11" {
  type        = string
  description = "Windows Image Version."
}