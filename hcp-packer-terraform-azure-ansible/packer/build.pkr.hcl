

build {

  hcp_packer_registry {
    bucket_name = var.pkr_bucket_name
    description = "Ubuntu 22_04-lts image."
    bucket_labels = {
      "owner"          = var.owner
      "department"     = var.department
      "os"             = "Ubuntu",
      "ubuntu-version" = "22_04-lts",
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

  provisioner "ansible-local" {
    playbook_file = "../ansible/playbook.yml"
  }

  /*
  # Install Ansible
  provisioner "shell" {
    script= "../scripts/ansible.sh"
  }

  provisioner "shell" {
    script= "../scripts/cleanup.sh"
  }
  */

}



