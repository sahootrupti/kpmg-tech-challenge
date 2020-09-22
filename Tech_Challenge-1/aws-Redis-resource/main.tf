/* Main script */
  
provider "aws" {
  access_key = "${var.acs_key}"
  secret_key = "${var.sec_key}"
  region     = "${var.region}"
}

resource "aws_security_group" "redis_sg_group" {
  name        = "${var.sg_group}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.sg_group_desc}"

  tags = {
    	Name = "${var.sg_group}"
  }
}

resource "aws_security_group_rule" "redis-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.redis_sg_group.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "redis-access" {
  type              = "ingress"
  security_group_id = "${aws_security_group.redis_sg_group.id}"
  from_port         = "${var.inst_port}"
  to_port           = "${var.inst_port}"
  protocol          = "tcp"
  cidr_blocks       = ["${var.vpc_cidr}"]
  description       = "Providing access to ${var.vpc_cidr} Network"
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "${var.subnet_group_name}"
  subnet_ids = ["${var.redis_subnet_id1}", "${var.redis_subnet_id2}", "${var.redis_subnet_id3}"]
  description = "${var.subnet_group_desc}"
}

resource "aws_elasticache_replication_group" "redis_instance" {
  replication_group_id           = "${var.inst_name}"
  replication_group_description  = "${var.inst_desc}"
  engine                         = "${var.inst_engine}"
  node_type                      = "${var.inst_type}"
  parameter_group_name           = "${var.inst_parameter_group_name}"
  port                           = "${var.inst_port}"
  engine_version                 = "${var.inst_engine_version}"
  automatic_failover_enabled     = "${var.inst_failover}"
  cluster_mode {
    replicas_per_node_group      = "${var.inst_replicas_per_node_group}"
    num_node_groups              = "${var.inst_num_node_groups}"
  }
  maintenance_window             = "${var.inst_maintenance_window}"
  backup_window                  = "${var.inst_backup_window}"
  snapshot_retention_limit       = "${var.inst_snapshot_retention_limit}"
  subnet_group_name              = "${aws_elasticache_subnet_group.redis_subnet_group.id}"
  security_group_ids             = ["${aws_security_group.redis_sg_group.id}"]

  tags = {
    	Deployment  = "${var.inst_tag1}"
	Environment = "${var.inst_tag2}"
	Product     = "${var.inst_tag3}"
	Name	    = "${var.inst_tag4}"
  }
}
