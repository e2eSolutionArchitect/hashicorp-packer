

source "amazon-ebs" "ubuntu" {
  profile       = var.profile
  ami_name      = var.ami_name
  instance_type = vR.instance_type
  region        = var.region
  source_ami    = var.source_ami
  ssh_username  = var.ssh_username
}

