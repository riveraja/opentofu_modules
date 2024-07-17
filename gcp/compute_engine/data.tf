data "google_compute_network" "default" {
  name = var.compute_network_name
}

data "google_compute_subnetwork" "default" {
  name = var.compute_subnetwork_name
}
