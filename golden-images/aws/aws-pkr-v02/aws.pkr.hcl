

source "amazon-ebs" "ubuntu" {
  profile       = var.profile
  ami_name      = var.ami_name_ubuntu
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_ubuntu
  ssh_username  = var.ssh_username
}

source "amazon-ebs" "rhel" {
  profile       = var.profile
  ami_name      = var.ami_name_rhel
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_rhel
  ssh_username  = var.ssh_username
}

source "amazon-ebs" "win" {
  profile       = var.profile
  ami_name      = var.ami_name_win
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_win
  ssh_username  = var.ssh_username
}

