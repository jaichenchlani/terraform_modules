output "user_message" {
    value = "Node Pool ${google_container_node_pool.primary_nodes.name} created successfuly."
}

output "id" {
    value = "${google_container_node_pool.primary_nodes.id}"
}

output "node_count" {
    value = "${google_container_node_pool.primary_nodes.node_count}"
}

output "max_pods_per_node" {
    value = "${google_container_node_pool.primary_nodes.max_pods_per_node}"
}

output "node_config" {
    value = "${google_container_node_pool.primary_nodes.node_config}"
}


