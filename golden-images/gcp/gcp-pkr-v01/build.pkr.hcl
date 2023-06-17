

#https://developer.hashicorp.com/packer/plugins/builders/googlecompute
build {
  name = "e2esa-packer-build"
  // sources = [
  //   "source.googlecompute.ubuntu"
  // ]
  source "source.googlecompute.ubuntu" {
    name     = "central-build"
    zone         = "us-central1-a"
    image_name = "packer-central-${local.date}"
  }
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

}

