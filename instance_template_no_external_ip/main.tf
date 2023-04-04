resource "google_compute_instance_template" "default" {
  name        = var.name
  description = "Instance template for web servers."
  metadata_startup_script = var.startup_script
  
  tags = ["web-server"] # Allow http traffic

  labels = {
    env = var.environment
    provisioned_by = "terraform"
  }

  instance_description = "Instance template for web servers."
  machine_type         = var.machine_type
  can_ip_forward       = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  // Create a new boot disk from an image
  disk {
    source_image      = var.image
    auto_delete       = true
    boot              = true
  }

  network_interface {
    network = var.network
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}