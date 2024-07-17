resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.instance_zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
  }

  network_interface {
    network    = data.google_compute_network.default.name
    subnetwork = data.google_compute_subnetwork.default.name
  }

  scheduling {
    preemptible                 = var.is_preemptible
    automatic_restart           = var.is_preemptible ? false : true
    provisioning_model          = var.is_preemptible ? "SPOT" : "STANDARD"
    instance_termination_action = var.is_preemptible ? var.instance_termination_action : null
  }
}
