output "backend_service" {
    value = "${google_compute_backend_service.default.name}"
}
output "load_balancer_global_ip" {
    value = "${google_compute_global_address.default.address}"
}