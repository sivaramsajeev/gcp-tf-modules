resource "google_compute_instance" "gce" {
  project      = var.project_name
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.instance_zone

  tags = var.instance_tags

  boot_disk {
    initialize_params {
      image = var.instance_boot_image
      size  = var.instance_boot_disk_size
    }
  }

  network_interface {
    network    = "projects/${var.project_name}/global/networks/${var.vpc_name}"
    subnetwork = "projects/${var.project_name}/regions/${var.instance_region}/subnetworks/${var.instance_subnet}"
  }

  metadata_startup_script = "apt update -y && apt install ansible"
}