output "name" {
    value = "${google_compute_instance_from_template.default.name}"
}

output "user_message" {
    value = "GCE Instance ${google_compute_instance_from_template.default.name} created successfuly."
}

output "external_ip" {
    value = "${google_compute_instance_from_template.default.network_interface.0.access_config.0.nat_ip}"
}