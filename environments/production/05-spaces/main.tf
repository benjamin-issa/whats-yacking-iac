module "spaces" {
  source = "../../../modules/spaces"

  spaces_name   = "files-whatsyacking"
  region        = "sfo3"
  cdn_hostname  = "files.us.whatsyacking.com"
  cors_hostname = "us.whatsyacking.com"
}

module "spaces-backups" {
  source = "../../../modules/spaces"

  spaces_name = "backup-whatsyacking"
  region      = "sfo3"

  expiration_enabled = true
}
