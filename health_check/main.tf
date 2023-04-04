resource "google_compute_health_check" "default" {
  name               = var.name
  check_interval_sec = var.check_interval_sec
  healthy_threshold  = var.healthy_threshold
  http_health_check {
    port               = var.port
    port_specification = "USE_FIXED_PORT"
    proxy_header       = "NONE"
    request_path       = "/"
  }
  timeout_sec         = var.timeout_sec
  unhealthy_threshold = var.unhealthy_threshold
  log_config {
    enable = true
  }
}