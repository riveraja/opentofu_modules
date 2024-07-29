variable "cluster_name" {
  type = string
}

variable "location" {
  type    = string
  default = "us-east1"
}

variable "cluster_node_locations" {
  type    = list(string)
  default = null
}

variable "nodepool_node_locations" {
  type    = list(string)
  default = null
}

variable "remove_default_node_pool" {
  type    = bool
  default = true
}

variable "container_cluster_init_node_count" {
  type    = number
  default = 1
}

variable "node_pool_node_count" {
  type    = number
  default = 1
}

variable "disk_size" {
  type    = number
  default = 100
}

variable "disk_type" {
  type    = string
  default = "pd-standard"
}

variable "is_preemptible" {
  type = bool
}

variable "image_type" {
  type    = string
  default = "cos_containerd"
}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "auth_scopes" {
  type    = list(string)
  default = ["https://www.googleapis.com/auth/cloud-platform"]
}

variable "service_account_email" {
  type = string
}

variable "cluster_description" {
  type    = string
  default = ""
}

variable "google_compute_network" {
  type = string
}

variable "google_compute_subnetwork" {
  type = string
}

variable "release_channel" {
  type    = string
  default = "STABLE"
}
