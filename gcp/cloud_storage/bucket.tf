resource "google_storage_bucket" "default" {
  name                     = var.bucket_name
  project                  = data.google_project.project.project_id
  location                 = var.location
  force_destroy            = var.bucket_force_destroy
  storage_class            = var.storage_class
  public_access_prevention = var.public_access_prevention
  soft_delete_policy {
    retention_duration_seconds = var.bucket_object_retention
  }
  versioning {
    enabled = var.bucket_versioning
  }
}
