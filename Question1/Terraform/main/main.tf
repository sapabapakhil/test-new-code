module "vpc" {
  source         = "../module/vpc"
  network_name   = var.network_name
  network_cidr   = var.network_cidr
  target_region  = var.target_region
  name_prefix    = var.name
}

module "web_server" {
  source          = "../server/webserver"
  project_id      = var.project_id
  name_prefix     = var.name
  vpc_project     = var.project_id
  vpc_name        = module.vpc.subnetwork
  vpc_subnetwork  = module.vpc.subnetwork
  target_region   = var.target_region
  target_zone     = var.target_zone
  disk_image      = var.disk_name
  service_account = google_service_account.sa.email
}