

source "amazon-ebs" "ubuntu" {
  profile       = var.profile
  ami_name      = "${var.ami_name_ubuntu}-${local.timestamp}"
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_ubuntu
  ssh_username  = var.ssh_username_ubuntu
  ami_regions = var.ami_regions # to replicate image to these regions for DR
}

source "amazon-ebs" "rhel" {
  profile       = var.profile
  ami_name      = "${var.ami_name_rhel}-${local.timestamp}"
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_rhel
  ssh_username  = var.ssh_username_rhel
}
