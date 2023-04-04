resource "google_compute_instance" "default" {
    name = var.name
    machine_type = var.machine_type
    zone = var.zone
    can_ip_forward = false
    metadata_startup_script = var.metadata_startup_script
    tags = ["http-server"] # Allow http traffic

    boot_disk {
        auto_delete = var.auto_delete
        source = var.source_disk
    }

    labels = {
      name = var.name
      machine_type = var.machine_type
      env = var.environment
      provisioned_by = "terraform"
    }
    network_interface {
      network = "default"
      access_config {
      }
    }
    
    service_account {
      scopes = ["cloud-platform"]
    }
}