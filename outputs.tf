output "bucket" {
  description = "The created storage bucket"
  value       = google_storage_bucket.bucket
}

output "urls" {
  description = "Bucket URLs."
  value = { for name, bucket in google_storage_bucket.buckets :
    name => bucket.url
  }
}