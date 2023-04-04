resource "google_compute_network" "default" {
  project                 = var.project
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnets_flag
}