variable "elb_name" {}

variable "availability_zones" {
    type = "list"
}

variable "subnets" {
    type = "list"
}

variable "cross_zone_load_balancing" {
    default = "true"
}

variable "env" {}