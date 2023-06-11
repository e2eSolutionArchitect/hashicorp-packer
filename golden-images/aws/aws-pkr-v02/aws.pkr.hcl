

source "amazon-ebs" "ubuntu" {
  profile       = var.profile
  ami_name      = "${var.ami_name_ubuntu}-${local.timestamp}"
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_ubuntu
  ssh_username  = var.ssh_username_ubuntu
}

source "amazon-ebs" "rhel" {
  profile       = var.profile
  ami_name      = "${var.ami_name_rhel}-${local.timestamp}"
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_rhel
  ssh_username  = var.ssh_username_rhel
}

/*
source "amazon-ebs" "win" {
  profile       = var.profile
  ami_name      = "${var.ami_name_win}-${local.timestamp}"
  communicator  = "winrm"
  instance_type = var.instance
  region        = var.region
  source_ami    = var.source_ami_win
  winrm_password = var.winrm_password
  winrm_username = var.winrm_username
  #user_data_file = "./bootstrap_win.txt"
}
*/

