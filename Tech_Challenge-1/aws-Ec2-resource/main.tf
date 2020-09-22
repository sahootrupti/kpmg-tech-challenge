/* Script to create an EC2 Instance*/
  
provider "aws" {
  access_key = "${var.acs_key}"
  secret_key = "${var.sec_key}"
  region     = "${var.region}"
}

resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "${var.key_pair}"
  public_key = "${var.ssh_key}"
}

resource "aws_security_group" "ec2_sg_group" {
  name        = "${var.sg_group}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.sg_desc}"

  tags = {
    Name      = "${var.sg_group}"
  }
}

resource "aws_security_group_rule" "ec2-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.ec2_sg_group.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ec2-ssh" {
  type              = "ingress"
  security_group_id = "${aws_security_group.ec2_sg_group.id}"
  from_port         = "${var.tfport}"
  to_port           = "${var.tfport}"
  protocol          = "tcp"
  cidr_blocks       = ["${var.tfcidr}"]
  description       = "${var.cidr_desc}"
}

resource "aws_instance" "ec2_instance" {
  ami                         = "${var.ami_name}"
  instance_type               = "${var.inst_type}"
  availability_zone           = "${var.avail_zone}"
  key_name                    = "${aws_key_pair.ec2_key_pair.id}"
  vpc_security_group_ids      = ["${aws_security_group.ec2_sg_group.id}"]

  root_block_device  {
    volume_type           = "gp2"
    volume_size           = "${var.tfvol}"
    delete_on_termination = "${var.vol_del}"
  }

  tags = {
        Name = "${var.inst_name}"
	Deployment = "${var.tag01}"
	Product = "${var.tag02}"
	Environment = "${var.tag03}"
       }
}

resource "aws_eip_association" "ec2_eip_assoc" {
  instance_id   = "${aws_instance.ec2_instance.id}"
  allocation_id = "${aws_eip.ec2.id}"
}

resource "aws_eip" "ec2" {
  vpc = true
}

