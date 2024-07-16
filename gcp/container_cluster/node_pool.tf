resource "google_container_node_pool" "default" {
  location       = var.location
  node_locations = try(var.nodepool_node_locations, null)
  cluster        = google_container_cluster.default.name
  node_count     = var.node_pool_node_count

  node_config {
    image_type      = var.image_type
    preemptible     = var.is_preemptible
    machine_type    = var.machine_type
    disk_size_gb    = var.disk_size
    disk_type       = var.disk_type
    service_account = var.service_account_email
    oauth_scopes    = var.auth_scopes
  }
}
