resource "digitalocean_kubernetes_cluster" "k8s-challenge" {
  name   = "do-k8s-challenge"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.19.15-do.0"

  node_pool {
    name       = "default"
    size       = "s-4vcpu-8gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 4

    tags = [
      "challenge",
      "kubeflow"
    ]

  }
}
