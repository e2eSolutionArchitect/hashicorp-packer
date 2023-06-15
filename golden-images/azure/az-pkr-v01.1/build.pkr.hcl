

build {

  hcp_packer_registry {
    bucket_name = "ubuntu22-nginx"
    description = "Ubuntu 22.04-LTS image."
    bucket_labels = {
      "owner"          = var.owner
      "department"     = var.department
      "os"             = "Ubuntu",
      "ubuntu-version" = "22.04",
      "app"            = "nginx",
    }
    build_labels = {
      "build-time" = local.timestamp
    }
  }

  name = "e2esa-packer-linux-build"
  sources = [
    "source.azure-arm.ubuntu22"
  ]

  # cloud-init to complete
  provisioner "shell" {
    inline = ["echo 'Wait for cloud-init...' && /usr/bin/cloud-init status --wait"]
  }

  provisioner "shell" {
    execute_command = local.execute_command
    inline = [
      "sudo apt-get update",
      "sudo apt-get install nginx -y",
      "echo 'Adding firewall rule...'",
      "sudo ufw allow proto tcp from any to any port 22,80,443",
      "echo 'y' | sudo ufw enable"
    ]
  }
}



