resource "google_storage_bucket" "bucket" {
  name                     = var.bucket_name
  project                  = var.project
  location                 = var.region
  public_access_prevention = "enforced"

  versioning {
    enabled = true
  }
}
