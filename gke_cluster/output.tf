output "user_message" {
    value = "GKE Cluster ${google_container_cluster.primary.name} created successfuly."
}

output "id" {
    value = "${google_container_cluster.primary.id}"
}

output "cluster_autoscaling" {
    value = "${google_container_cluster.primary.cluster_autoscaling}"
}

output "ip_allocation_policy" {
    value = "${google_container_cluster.primary.ip_allocation_policy}"
}

output "node_config" {
    value = "${google_container_cluster.primary.node_config}"
}

output "self_link" {
    value = "${google_container_cluster.primary.self_link}"
}