variable "network" {
  type = string
}

variable "firewall_name" {
  type = string
}

variable "set_allow_list" {
  type    = bool
  default = true
}

variable "allow_list" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = []
}

variable "source_tags" {
  type = list(string)
}

variable "target_tags" {
  type = list(string)
}
