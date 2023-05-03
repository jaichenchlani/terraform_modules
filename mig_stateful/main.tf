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

  stateful_disk {
    device_name = var.disk
    delete_rule = "NEVER"
  }
  
  base_instance_name = var.name
  target_size        = var.target_size
  
}