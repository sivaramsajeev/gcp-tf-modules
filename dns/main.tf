resource "google_dns_managed_zone" "public-zone" {
  name        = replace(var.dns_domain, ".", "-")
  dns_name    = var.dns_domain
  description = "Public DNS zone for ${var.dns_domain}"
}