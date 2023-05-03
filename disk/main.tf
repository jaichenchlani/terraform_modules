resource "google_compute_disk" "default" {
  name  = var.name
  type  = var.type
  size  = var.size
  labels = {
      env = var.environment
      provisioned_by = "terraform"
    }
}