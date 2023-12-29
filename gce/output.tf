output "gce_private_ip" {
  value = google_compute_instance.gce.network_interface.0.network_ip
}

output "gce_public_ip" {
  value = google_compute_instance.gce.network_interface.0.access_config[0].nat_ip
}

output "gce_id" {
  value = google_compute_instance.gce.id
}