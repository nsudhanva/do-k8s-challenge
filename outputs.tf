output "kubernetes_id" {
  description = "ID of the cluster"
  value       = digitalocean_kubernetes_cluster.k8s-challenge.id
}
output "kubernetes_host" {
  description = "The hostname of the API server for the cluster"
  value       = digitalocean_kubernetes_cluster.k8s-challenge.endpoint
}

output "kubernetes_urn" {
  description = "The uniform resource name (URN) for the Kubernetes cluster."
  value       = digitalocean_kubernetes_cluster.k8s-challenge.urn
}

output "kubernetes_created" {
  description = "Created at timestamp for the cluster"
  value       = digitalocean_kubernetes_cluster.k8s-challenge.created_at
}


