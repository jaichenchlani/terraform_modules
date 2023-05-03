resource "google_compute_instance_template" "default" {
  name        = var.name
  description = var.description
  metadata_startup_script = var.startup_script
  
  tags = var.network_tags # Network Tags

  labels = {
    env = var.environment
    provisioned_by = "terraform"
  }

  machine_type         = var.machine_type

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

  // Use an existing disk resource
  disk {
  // Instance Templates reference disks by name, not self link
    # source      = var.disk
    device_name = var.disk
    disk_name = var.disk
    auto_delete = false
    boot        = false
  }
  
  network_interface {
    network = var.network
    access_config {}
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}