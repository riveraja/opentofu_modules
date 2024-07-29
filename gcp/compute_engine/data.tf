data "google_compute_subnetwork" "default" {
  name = var.google_compute_subnetwork
}

data "google_compute_network" "default" {
  name = var.google_compute_network
}
