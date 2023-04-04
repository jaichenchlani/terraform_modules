resource "google_storage_bucket" "default" {
    project = var.project
    name = "${var.project}_${var.name}"
    location = var.region
    force_destroy = var.force_destroy
    storage_class = var.storage_class
    labels = {
      name = var.name
      env = var.environment
      location = var.region
      provisioned_by = "terraform"
    }
    dynamic "logging" {
      for_each = var.logging
      content {
        log_bucket = logging.key == "log_bucket" ? logging.value : null
      }
    }
    dynamic "versioning" {
      for_each = var.versioning
      content {
        enabled = versioning.key == "enabled" ? versioning.value : false
      }
    }
}