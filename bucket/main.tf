resource "google_storage_bucket" "bucket" {
  name                     = var.bucket_name
  project                  = var.project_name
  location                 = var.bucket_region
  public_access_prevention = "enforced"

  versioning {
    enabled = true
  }
}
