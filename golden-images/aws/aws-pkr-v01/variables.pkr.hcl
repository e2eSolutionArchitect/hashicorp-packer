variable profile {
  type        = string
  description = "aws profile name"
}
variable ami_name {
  type = string
}
variable instance_type {
  type = string
}
variable region {
  type = string
}

variable source_ami {
  type = string
  validation {
    condition     = length(var.source_ami) > 4 && substr(var.source_ami, 0, 4) == "ami-"
    error_message = "The image_version value must be a valid source_ami, starting with \"ami-\"."
  }
}
variable ssh_username {
  type = string
}
