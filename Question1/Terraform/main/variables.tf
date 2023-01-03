variable "project_id" {
  type = string
  default = "question1-10102201"
}

variable "name" {
  type        = string
  default     = "question1-test"
}

variable target_region {
  type    = string
  default = "us-central1"
}

variable target_zone {
  type    = string
  default = "us-central1-a"
}

variable disk_name {
  type    = string
  default = "Disk name should be provided"
}

variable "network_name" {
  type    = string
  default = "question-1"
}

variable "network_cidr" {
  default = "10.160.0.0/24"
}