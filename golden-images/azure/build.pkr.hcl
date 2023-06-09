build {
  sources = [
    "source.azure-arm.ubuntu"
  ]

  provisioner shell {
    execute_command = local.execute_command
    inline = ["apt update"]
  }

  provisioner shell {
    execute_command = local.execute_command
    inline = ["/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"]
    only = ["azure-arm"]
  }

}
