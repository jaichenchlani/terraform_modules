resource "google_compute_instance" "default" {
    name = var.name
    machine_type = var.machine_type
    zone = var.zone
    can_ip_forward = false
    metadata_startup_script = var.startup_script
    tags = var.network_tags # Allow http traffic

    boot_disk {
        auto_delete = var.auto_delete
        initialize_params {
          image = var.image
          size = "20"
        }
    }

    labels = {
      env = var.environment
      provisioned_by = "terraform"
    }
    network_interface {
      network = var.network
      access_config {
      }
    }

    service_account {
      scopes = ["cloud-platform"]
    }
}