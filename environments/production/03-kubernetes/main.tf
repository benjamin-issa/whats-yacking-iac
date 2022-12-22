module "kubernetes" {
  source = "../../../modules/kubernetes"

  # Cluster
  doks_cluster_name    = "k8s-whatsyacking-us-01"
  doks_cluster_version = "1.24.8-do.0"
  region               = "sfo3"

  # Node pool - generic
  generic_pool_name      = "pool-generic-3"
  generic_pool_size      = "s-1vcpu-2gb-amd"
  generic_pool_min_nodes = 2
  generic_pool_max_nodes = 2

  # Node pool - sidekiq
  sidekiq_pool_name      = "pool-sidekiq-3"
  sidekiq_pool_size      = "s-1vcpu-2gb-amd"
  sidekiq_pool_min_nodes = 1
  sidekiq_pool_max_nodes = 1

  # Networking
  vpc_name = "sfo3-vpc-whatsyacking-us-01"
}
