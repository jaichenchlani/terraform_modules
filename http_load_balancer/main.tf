resource "google_compute_backend_service" "default" {
  name                            = var.backend_service_name
  connection_draining_timeout_sec = 0
  health_checks                   = var.health_checks
  load_balancing_scheme           = "EXTERNAL_MANAGED"
  port_name                       = "http"
  protocol                        = "HTTP"
  session_affinity                = "NONE"
  timeout_sec                     = var.timeout_sec
  backend {
    group           = var.backend_mig_name
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
  }
}

resource "google_compute_url_map" "default" {
  name            = var.url_map_name
  default_service = google_compute_backend_service.default.id
}

resource "google_compute_target_http_proxy" "default" {
  name    = var.proxy_name
  url_map = google_compute_url_map.default.id
}

resource "google_compute_global_address" "default" {
  name       = var.lb_ipv4_name
  ip_version = "IPV4"
}

resource "google_compute_global_forwarding_rule" "default" {
  name                  = var.forwarding_rule_name
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  port_range            = "80-80"
  target                = google_compute_target_http_proxy.default.id
  ip_address            = google_compute_global_address.default.id
}