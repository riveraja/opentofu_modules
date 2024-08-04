variable "boot_disk_image" {
  type    = string
  default = "ubuntu-2404-lts-amd64"
}

variable "is_preemptible" {
  type    = bool
  default = false
}

variable "instance_termination_action" {
  type    = string
  default = "STOP"
}

variable "google_compute_subnetwork" {
  type = string
  # default = "default"
}

variable "google_compute_network" {
  type = string
  # default = "default"
}

variable "instance_name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "instance_zone" {
  type = string
}

variable "boot_disk_size" {
  type = number
}

variable "boot_disk_type" {
  type    = string
  default = "pd-standard"
}

variable "service_account_email" {
  type = string
}

variable "service_account_scopes" {
  type    = list(string)
  default = ["cloud-platform"]
}

variable "ssh_keys" {
  type = string
}
