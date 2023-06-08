packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.6"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

// NOTE:
// - In a single packer file more than one images can be built. Such as build for AWS, azure, GCP together
// - Define the separate plugin for amazon, azure, googlecompute under "required_plugins" for building multiple cloud images
// - Define separate sources
// - Under build add all sources in "sources []" list. 


source "amazon-ebs" "ubuntu" {
  profile       = "e2esaprofile"
  ami_name      = "e2esa-aws-ubuntu-golden"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "ami-053b0d53c279acc90"
  ssh_username  = "ubuntu"
}


build {
  name = "e2esa-packer-build"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    environment_vars = [
      "TEMP=hello world",
    ]
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

  post-processor "vagrant" {}
  post-processor "compress" {}

}



