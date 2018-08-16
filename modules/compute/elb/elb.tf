# Create a new load balancer
resource "aws_elb" "elb" {
  name               = "${var.env}-${var.elb_name}"
  #availability_zones = ["${var.availability_zones}"]

  /*access_logs {
    bucket        = "foo"
    bucket_prefix = "bar"
    interval      = 60
  }*/

  #security_groups = 
  subnets = ["${var.subnets}"]

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 8000
    instance_protocol  = "TCP"
    lb_port            = 443
    lb_protocol        = "TCP"
    #ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

 # instances                   = ["${aws_instance.foo.id}"]
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags {
    Name = "${var.env}-${var.elb_name}"
    env = "${var.env}"
  }
}