resource "google_container_cluster" "default" {
  name                     = var.cluster_name
  location                 = var.location
  node_locations           = try(var.cluster_node_locations, null)
  project                  = data.google_project.project.project_id
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.container_cluster_init_node_count
  deletion_protection      = false

  release_channel {
    channel = var.release_channel
  }

  cluster_autoscaling {
    enabled = false
  }

  networking_mode = "VPC_NATIVE"
  subnetwork      = data.google_compute_subnetwork.default.id
  network         = data.google_compute_network.default.id
}
