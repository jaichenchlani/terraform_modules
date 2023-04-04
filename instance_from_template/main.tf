resource "google_compute_instance_from_template" "default" {
  name = var.name
  zone = var.zone
  source_instance_template = var.source_instance_template
}