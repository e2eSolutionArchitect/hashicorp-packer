

source "amazon-ebs" "ubuntu" {
  profile       = var.profile
  ami_name      = var.ami_name
  instance_type = var.instance_type1
  region        = var.region1
  source_ami    = var.source_ami
  ssh_username  = var.ssh_username
}

source "amazon-ebs" "rhel" {
  profile       = var.profile
  ami_name      = var.ami_name_rhel
  instance_type = var.instance_type2
  region        = var.region2
  source_ami    = var.source_ami_rhel
  ssh_username  = var.ssh_username_rhel
}

