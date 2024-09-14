resource "google_compute_firewall" "firewall" {
  name    = var.firewall_name
  network = data.google_compute_network.default.name

  dynamic "allow" {
    for_each = var.set_allow_list ? var.allow_list : []

    content {
      protocol = lookup(allow.value, "protocol", null)
      ports    = lookup(allow.value, "ports", null)
    }
  }

  source_ranges = var.source_ranges
  target_tags   = var.target_tags
}
