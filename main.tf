provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

data "aws_availability_zones" "available" {}

module "public-lb" {
  source = "./modules/compute/elb/"
  version = "1.0.0"
  availability_zones = ["${data.aws_availability_zones.available.names[0]}", "${data.aws_availability_zones.available.names[1]}"]
  subnets = ["${module.public-frontend-subnet-primary.subnetid}", "${module.public-frontend-subnet-secondary.subnetid}"]
  cross_zone_load_balancing = "${var.cross_zone_load_balancing}"
  elb_name = "public-lb"
  env = "${var.env}"
}

data "aws_kms_key" "storagekey" {
  key_id = "alias/aws/ebs"
}

module "ebs" {
  source = "./modules/compute/ebs/"
  version = "1.0.0"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  kms_key_id = "${data.aws_kms_key.storagekey.arn}"
  encrypted = "true"
}
