variable subscription_id {
  type        = string
  description = "subscription_id from Azure account"
}
variable tenant_id {
  type = string
}
variable client_id {
  type = string
}
variable client_secret {
  type = string
}
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
variable resource_group_name {
  type = string
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