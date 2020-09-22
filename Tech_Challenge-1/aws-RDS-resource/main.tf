/* Main script */
  
provider "aws" {
  access_key = "${var.acs_key}"
  secret_key = "${var.sec_key}"
  region     = "${var.region}"
}

resource "aws_security_group" "postgre_sg_group" {
  name        = "${var.sg_group_sql}"
  vpc_id      = "${var.vpc_id}"
  description = "Security group for RDS PostgreSQL"

  tags = {
    	Name = "${var.sg_group_sql}"
  }
}

resource "aws_security_group_rule" "postgre-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.postgre_sg_group.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "postgre-access" {
  type              = "ingress"
  security_group_id = "${aws_security_group.postgre_sg_group.id}"
  from_port         = "${var.PORT}"
  to_port           = "${var.PORT}"
  protocol          = "tcp"
  cidr_blocks       = ["${var.CIDR}"]
  description       = "Providing access to ${var.CIDR} Network"
}

resource "aws_db_subnet_group" "postgre_db_subnet_group" {
  name       = "${var.db_subnet_grp_name_sql}"
  subnet_ids = ["${var.db_subnet_id1}", "${var.db_subnet_id2}"]
  description = "db subnet group for mysql"

  tags = {
    Name = "${var.db_subnet_grp_name_sql}"
  }
}

resource "aws_db_instance" "postgre_db_instance" {
  allocated_storage    = "${var.stor}"
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "${var.eng_ver}"
  instance_class       = "${var.inst_type}"
  identifier           = "${var.inst_name_sql}"
  name                 = "${var.db_name_sql}"
  username             = "${var.db_user_name_sql}"
  password             = "${var.db_user_password_sql}"
  parameter_group_name = "${var.pmtr_grp}"
  multi_az             = "${var.mlt_az}"
  maintenance_window   = "${var.maintain}"
  backup_window        = "${var.bkp_win}"
  backup_retention_period = "${var.rtn_prd}"
  vpc_security_group_ids = ["${aws_security_group.postgre_sg_group.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.postgre_db_subnet_group.id}"
  skip_final_snapshot = true
  publicly_accessible = "${var.pub_access}"
  tags = {
    	Deployment  = "${var.inst_tag1}"
        Environment = "${var.inst_tag2}"
        Product     = "${var.inst_tag3}"
        Name	    = "${var.inst_tag4}"
  }

}
