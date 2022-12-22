module "databases" {
  source = "../../../modules/databases"

  # PostgreSQL
  db_cluster_name      = "db-postgresql-sfo3-whatsyacking"
  db_cluster_version   = "14"
  db_node_count        = "1"
  db_cluster_size      = "db-s-1vcpu-1gb"
  connection_pool_name = "mastodon-pool"
  connection_pool_size = 20

  # Postgresql database
  db_username = "mastodon"
  db_name     = "mastodon"

  # Redis
  redis_cluster_name    = "db-redis-sfo3-whatsyacking"
  redis_cluster_version = "7"
  redis_node_count      = "1"
  redis_cluster_size    = "db-s-1vcpu-1gb"

  # Networking
  vpc_name = "sfo3-vpc-whatsyacking-us-01"
  region   = "sfo3"

  # Kubernetes
  kubernetes_cluster_name = "k8s-whatsyacking-us-01"
}
