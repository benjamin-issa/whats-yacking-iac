module "networking" {
  source = "../../../modules/networking"

  # VPC
  vpc_name = "sfo3-vpc-whatsyacking-us-01"
  vpc_cidr = "10.110.0.0/20"
}
