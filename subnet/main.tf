resource "google_compute_subnetwork" "subnet" {
  project       = var.project_name
  name          = var.subnet_name 
  ip_cidr_range = var.subnet_cidr
  region        = var.subnet_region
  network       = var.vpc_id
}