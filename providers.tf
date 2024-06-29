# Configure and authenticate with the GCP provider
provider "google" {
  project = var.project_id
  region  = var.gcp_region
}

# terraform {
#   backend "local" {

#   }
# }

terraform {
  backend "gcs" {}
}
