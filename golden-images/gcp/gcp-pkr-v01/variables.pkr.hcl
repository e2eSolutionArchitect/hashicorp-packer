variable project_id {
  type        = string
  description = "project_id from GCP account"
}

variable zone {
  type = string
  validation {
    condition     = length(var.zone) > 4 && substr(var.zone, 0, 3) == "us-"
    error_message = "The zone value must be a valid zone, starting with \"us-\"."
  }
}
variable ssh_username {
  type = string
}
variable source_image {
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