resource "google_dns_managed_zone" "public-zone" {
  project     = var.project_name
  name        = replace(var.domain_name, ".", "-")
  dns_name    = var.domain_name
  description = "Public DNS zone for ${var.domain_name}"
}