output "bucket_uri" {
  description = "The URI of the created resource"
  value       = google_storage_bucket.default.self_link
}

output "bucket_url" {
  description = "The base URL of the bucket"
  value       = google_storage_bucket.default.url
}
