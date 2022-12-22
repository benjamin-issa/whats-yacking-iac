terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "https://sfo3.digitaloceanspaces.com"
    region                      = "us-east-1"
    bucket                      = "state-whatsyacking-us"
    key                         = "production/03-kubernetes.tfstate"
  }
}
