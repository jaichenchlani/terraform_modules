output "user_message" {
    value = "Bucket ${google_storage_bucket.default.name} created successfuly. Click ${google_storage_bucket.default.self_link}."
}

output "id" {
    value = "${google_storage_bucket.default.id}"
}

output "self_link" {
    value = "${google_storage_bucket.default.self_link}"
}