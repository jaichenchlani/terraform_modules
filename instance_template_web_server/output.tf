output "user_message" {
    value = "Instance template ${google_compute_instance_template.default.name} created successfuly."
}

output "name" {
    value = "${google_compute_instance_template.default.name}"
}

output "self_link" {
    value = "${google_compute_instance_template.default.self_link}"
}