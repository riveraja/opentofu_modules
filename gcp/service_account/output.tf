output "service_account_id" {
  description = "Service Account ID"
  value       = google_service_account.service_account.id
}

output "service_account_email" {
  description = "Service Account Email"
  value       = google_service_account.service_account.email
}
