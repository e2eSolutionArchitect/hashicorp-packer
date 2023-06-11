


build {
  name = "e2esa-packer-ubuntu-build"
  sources = [
    "source.amazon-ebs.ubuntu"
    //"source.amazon-ebs.win"
  ]
  provisioner "shell" {
    environment_vars = [
      "TEMP=hello world",
    ]
    execute_command = local.execute_command
    inline = [
      "echo Installing nginx",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo ufw allow proto tcp from any to any port 22,80,443",
      "echo 'y' | sudo ufw enable",
      "echo \"Variable value is $TEMP\" > demo.txt"
    ]
  }

  //post-processor "vagrant" {}
  //post-processor "compress" {}

}




build {
  name = "e2esa-packer-rhel-build"
  sources = [
    "source.amazon-ebs.rhel"
  ]
  provisioner "shell" {
    environment_vars = [
      "TEMP=hello world",
    ]
    execute_command = local.execute_command
    inline = [
      "echo Installing nginx",
      "sleep 30",
      "sudo yum update -y",
      "sudo yum install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y",
      "sudo dnf upgrade",
      "sudo yum install snapd",
      "sudo systemctl enable --now snapd.socket",
      "sudo snap install ufw -y",
      "sudo ufw status",
      "sudo ufw enable",
      "sudo ufw allow proto tcp from any to any port 22,80,443",
      "echo 'y' | sudo ufw enable",
      "echo \"Variable value is $TEMP\" > demo.txt"
    ]
  }

  //post-processor "vagrant" {}
  //post-processor "compress" {}

}

