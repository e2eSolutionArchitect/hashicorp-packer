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

variable "artifacts_resource_group" {
  type        = string
  description = "Packer Artifacts Resource Group."
}

variable "build_resource_group" {
  type        = string
  description = "Packer Build Resource Group."
}

variable "source_image_publisher" {
  type        = string
  description = "Windows Image Publisher."
}

variable "source_image_offer" {
  type        = string
  description = "Windows Image Offer."
}

variable "source_image_sku" {
  type        = string
  description = "Windows Image SKU."
}

variable "source_image_version" {
  type        = string
  description = "Windows Image Version."
}