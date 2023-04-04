resource "google_compute_instance_group_manager" "default" {
  name = var.name
  zone = var.zone
  named_port {
    name = "http"
    port = var.port
  }
  
  version {
    instance_template = var.source_instance_template
    name              = "primary"
  }

  auto_healing_policies {
    health_check      = var.health_check
    initial_delay_sec = 300
  }
  
  base_instance_name = var.name
  target_size        = var.target_size
  
}