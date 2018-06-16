resource "aws_security_group" "sg" {
  vpc_id = "${var.vpc_id}"
  name = "${var.sg_name}"
  ingress {
    from_port = "${var.https_port}"
    to_port = "${var.https_port}"
    protocol = "tcp"
    cidr_blocks = ["${var.https_cidr}"]
  }
  ingress {
    from_port = "${var.ssh_port}"
    to_port = "${var.ssh_port}"
    protocol = "tcp"
    cidr_blocks = ["${var.ssh_cidr}"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.sg_name}"
    Stack = "${var.Stack}"
    Stack-ID = "${var.Stack_ID}"
    Stack-Version = "${var.version}"
  }
}
