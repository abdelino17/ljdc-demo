variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
}

variable "ip_cidr_range" {
  type        = string
  description = "The IP CIDR range for the VPC Subnet"
}

variable "region" {
  type        = string
  description = "value of the region"
  default     = "us-central1"
}

variable "webserver_port" {
  type        = string
  description = "port number of the webserver"
}
