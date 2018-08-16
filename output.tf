output "dhcpoptionsetid" {
  value = "${module.core-network-dhcp.dhcpopid}"
}

output "dhcpoptionsetassocid" {
  value = "${module.core-network-dhcp.dhcpopassoid}"
}

output "publicfrontend-primary-subnetid" {
  value = "${module.public-frontend-subnet-primary.subnetid}"
}

output "publicfrontend-primary-subnet-az" {
  value = "${module.public-frontend-subnet-primary.subnet-az}"
}

output "publicfrontend-primary-subnet-cidr" {
  value = "${module.public-frontend-subnet-primary.subnet-cidr}"
}

output "publicfrontend-secondary-subnetid" {
  value = "${module.public-frontend-subnet-secondary.subnetid}"
}

output "publicfrontend-secondary-subnet-az" {
  value = "${module.public-frontend-subnet-secondary.subnet-az}"
}

output "publicfrontend-secondary-subnet-cidr" {
  value = "${module.public-frontend-subnet-secondary.subnet-cidr}"
}

output "private-app-subnetid" {
  value = "${module.private-app-subnet.subnetid}"
}

output "private-app-subnet-cidr" {
  value = "${module.private-app-subnet.subnet-cidr}"
}

output "private-app-subnet-az" {
  value = "${module.private-app-subnet.subnet-az}"
}

output "private-db-subnet" {
  value = "${module.private-db-subnet.subnetid}"
}

output "private-db-subnet-az" {
  value = "${module.private-db-subnet.subnet-az}"
}

output "private-db-subnet-cidr" {
  value = "${module.private-db-subnet.subnet-cidr}"
}

output "core-network-vpc-id" {
  value = "${module.core-network-vpc.id}"
}

output "core-network-vpc-vpcarn" {
  value = "${module.core-network-vpc.vpcarn}"
}

output "core-network-vpc-cidr" {
  value = "${module.core-network-vpc.vpc-cidr}"
}
