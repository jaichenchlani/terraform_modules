output "name" {
    value = "${google_compute_instance.default.name}"
}

output "user_message" {
    value = "GCE Instance ${google_compute_instance.default.name} created successfuly."
}

output "external_ip" {
    value = "${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"
}