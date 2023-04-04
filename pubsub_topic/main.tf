resource "google_pubsub_topic" "default" {
  name = var.name
  labels = {
    name = var.name
    env = var.environment
    provisioned_by = "terraform"
  }
  message_retention_duration = "86600s"
}