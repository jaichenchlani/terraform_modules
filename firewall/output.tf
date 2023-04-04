output "user_message" {
    value = "Firewall ${google_compute_firewall.default.name} created successfuly."
}
output "self_link" {
    value = "${google_compute_firewall.default.self_link}"
}