output "gce_private_ip" {
  value = google_compute_instance.gce.network_interface.0.network_ip 
}

output "gce_id" {
    value = google_compute_instance.gce.id
}