source "googlecompute" "ubuntu" {
  project_id   = var.project_id
  image_name = "${var.image_name}-${var.image_version}"
  source_image = var.source_image
  ssh_username = var.ssh_username
  zone         = var.zone
}

build {
  sources = ["sources.googlecompute.ubuntu"]
}
