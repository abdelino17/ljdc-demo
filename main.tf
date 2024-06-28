module "vpc" {
  source = "./modules/vpc"

  vpc_name       = "ljdc-demo-${var.environment}"
  ip_cidr_range  = "10.0.1.0/24"
  webserver_port = var.webserver_port
  region         = var.gcp_region
}

module "webserver" {
  source = "./modules/webserver"

  application_name = "ljdc-webserver-${var.environment}"
  subnetwork_name  = module.vpc.default_subnetwork
  network_tags     = ["allow-custom-port", "ssh"]
  webserver_port   = var.webserver_port
  labels = {
    env     = var.environment
    project = var.project_name
  }

  depends_on = [
    module.vpc
  ]
}
