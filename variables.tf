variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "region" {}

variable "env" {
  default = "PoC"
}

variable "cidr" {
  default = ["10.0.0.0/16"]
}

variable "public-frontend-subnet-primary" {
  default = "10.0.1.0/24"
}

variable "public-frontend-subnet-secondary" {
  default = "10.0.2.0/24"
}

variable "private-app-subnet" {
  default = "10.0.3.0/24"
}

variable "private-db-subnet" {
  default = "10.0.4.0/24"
}

variable "create_vpc" {
  default = true
}

variable "enable_dhcp_options" {
  default = true
}

variable "cross_zone_load_balancing" {
  default = true
}