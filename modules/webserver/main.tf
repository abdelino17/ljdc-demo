# Create a single Compute Engine instance
resource "google_compute_instance" "server" {
  name         = var.application_name
  machine_type = var.machine_type
  zone         = var.zone

  labels = var.labels

  tags = var.network_tags # network tags

  boot_disk {
    initialize_params {
      image = var.machine_image
      size  = var.boot_disk_size
    }
  }

  # Install Dependencies
  metadata_startup_script = file("${path.module}/cloud-init/init_script.sh")

  network_interface {
    subnetwork = var.subnetwork_name

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
