variable "application_name" {
  type        = string
  description = "the name of the application"
  default     = "ljdc-demo"
}

variable "environment" {
  type        = string
  description = "value of the environment"
}

variable "gcp_region" {
  type        = string
  description = "The region in which to create the resources"
}

variable "project_id" {
  type        = string
  description = "id of the project"
}

variable "project_name" {
  type        = string
  description = "name of project"
  default     = "ljdc"
}

variable "webserver_port" {
  type        = string
  description = "value of the webserver port"
  default     = "8080"
}
