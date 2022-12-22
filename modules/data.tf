data "digitalocean_vpc" "this" {
  name = var.vpc_name
  depends_on = [
    digitalocean_vpc.this
  ]
}
