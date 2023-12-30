resource "google_compute_firewall" "firewall_allow" {
  name      = var.firewall_name
  network   = var.network
  project   = var.project_name

  dynamic "allow" {
    for_each = var.rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  source_ranges = var.source_ranges
}