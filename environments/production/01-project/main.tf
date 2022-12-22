module "project" {
  source = "../../../modules/project"

  project_name        = "whats-yacking-us"
  project_description = "Project containing the us.whatsyacking.com platform"
  project_environment = "Production"
}
