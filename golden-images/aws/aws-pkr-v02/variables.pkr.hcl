variable profile {
  type        = string
  description = "aws profile name"
}
variable ami_name {
  type = string
}
variable instance_type1 {
  type = string
}
variable region1 {
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


# RHEL

variable ami_name_rhel {
  type = string
}
variable instance_type2 {
  type = string
}
variable region2 {
  type = string
}

variable source_ami_rhel {
  type = string
  validation {
    condition     = length(var.source_ami_rhel) > 4 && substr(var.source_ami_rhel, 0, 4) == "ami-"
    error_message = "The source_ami_rhel value must be a valid source_ami_rhel, starting with \"ami-\"."
  }
}
variable ssh_username_rhel {
  type = string
}