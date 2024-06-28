// A variable for extracting the external IP address of the VM
output "webserver_url" {
  value = join("", ["http://", google_compute_instance.server.network_interface.0.access_config.0.nat_ip, ":", var.webserver_port])
}
