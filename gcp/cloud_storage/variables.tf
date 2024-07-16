variable "bucket_name" {
  type = string
}

variable "location" {
  type    = string
  default = "US"
}

variable "bucket_force_destroy" {
  type    = bool
  default = true
}

variable "public_access_prevention" {
  type    = string
  default = "enforced"
}

variable "storage_class" {
  type    = string
  default = "STANDARD"
}

variable "bucket_object_retention" {
  type    = number
  default = 604800
}

variable "bucket_versioning" {
  type    = bool
  default = false
}
