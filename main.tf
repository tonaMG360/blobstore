terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.28.0"
    }
  }
}


resource "google_storage_bucket" "bucket" {
  name          = var.name
  location      = var.location
  project       = var.project_id
  force_destroy = true

  versioning {
    enabled = true
  }

  resource "google_storage_bucket_iam_member" "members" {
  for_each = {
    for m in var.iam_members : "${m.role} ${m.member}" => m
  }
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectViewer"
  member = each.value.member
}
}
