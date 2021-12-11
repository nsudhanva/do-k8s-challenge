resource "digitalocean_kubernetes_cluster" "k8s-challenge" {
  name   = "do-k8s-challenge"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.21.5-do.0"

  node_pool {
    name       = "default"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 1

    tags = [
      "challenge",
      "kubeflow"
    ]

  }
}
