resource "aws_ebs_volume" "example" {
    availability_zone = "${var.availability_zone}"
    encrypted = "${var.encrypted}"
    kms_key_id = "${var.kms_key_id}"
    size = 40
    tags {
        Name = "HelloWorld"
    }
}