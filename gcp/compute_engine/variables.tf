variable "compute_image_family" {
  type    = string
  default = "rocky-linux-9"
}

variable "compute_network_name" {
  type    = string
  default = "default"
}

variable "compute_subnetwork_name" {
  type    = string
  default = "default"
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
