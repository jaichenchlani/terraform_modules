resource "google_container_node_pool" "primary_nodes" {
  name      = var.name
  location  = var.region
  cluster   = var.cluster
  node_count = var.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      name = var.name
      env = var.environment
      provisioned_by = "terraform"
    }

    # preemptible  = true
    machine_type = var.environment == "qa" ? var.machine_type["qa"] : var.machine_type["dev"]
    tags         = ["gke-node"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}