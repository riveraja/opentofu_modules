data "google_project" "project" {

}

data "google_compute_network" "vpc" {
  name = var.google_compute_network_name
}

data "google_compute_subnetwork" "subnetwork" {
  name = var.google_compute_subnetwork
}
