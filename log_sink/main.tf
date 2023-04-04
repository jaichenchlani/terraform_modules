resource "google_logging_project_sink" "default" {
  name = var.name

  # Can export to pubsub, cloud storage, or bigquery
  destination = var.destination

  # labels = {
  #     name = var.name
  #     env = var.environment
  #     provisioned_by = "terraform"
  #   }

  # Log all WARN or higher severity messages relating to instances
  filter = var.filter

  # Use a unique writer (creates a unique service account used for writing)
  unique_writer_identity = var.unique_writer_identity
}