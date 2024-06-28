variable "application_name" {
  type        = string
  description = "value of the application name"
}

variable "boot_disk_size" {
  type        = number
  description = "size of the boot disk"
  default     = 10
}

variable "machine_image" {
  type        = string
  description = "value of the machine image"
  default     = "debian-cloud/debian-12"
}

variable "machine_type" {
  type        = string
  description = "value of the machine type"
  default     = "f1-micro"
}

variable "zone" {
  type        = string
  description = "value of the zone"
  default     = "us-central1-a"
}

variable "subnetwork_name" {
  type        = string
  description = "value of the subnetwork"
}

variable "labels" {
  type        = map(string)
  description = "list of labels for resources"
  default     = {}
}

variable "network_tags" {
  type        = list(string)
  description = "list of network tags"
  default     = []
}

variable "webserver_port" {
  type        = string
  description = "port of the webserver"
}
