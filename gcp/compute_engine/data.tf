data "google_compute_image" "default" {
  family = var.compute_image_family
}

data "google_compute_network" "default" {
  name = var.compute_network_name
}

data "google_compute_subnetwork" "default" {
  name = var.compute_subnetwork_name
}
