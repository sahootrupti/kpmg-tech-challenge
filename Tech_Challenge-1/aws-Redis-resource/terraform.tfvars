/*Please Provide the VPC ID*/
vpc_id  = ""

/*Provide the CIDR Value that need access to this REDIS*/
vpc_cidr    = ""

/*Provide the Security Group Name for this*/
sg_group    = ""

/*Security Group Description*/
sg_group_desc = ""

/*Mention the Subnet Group 1 of that VPC*/
db_subnet_id1   = ""

/*Mention the Subnet Group 2 of that VPC*/
db_subnet_id2   = ""

/*Mention the Subnet Group 3 of that VPC*/
db_subnet_id3   = ""

/*Mention a Subnet Group name*/
subnet_group_name  = ""

/*Subnet Group Description*/
subnet_group_desc = ""

/*REDIS Instance Name that nees to be created*/
inst_name   = ""

/*REDIS Instance Description*/
inst_desc = ""

/*REDIS Instance Engine Name*/
inst_engine = "redis"

/*Engine Version of the REDIS To be Created*/
inst_engine_version = "3.2.10"

/*REDIS Instance PORT Detais for Access*/
inst_port  = "6379"

/*REDIS Instance Parameter Group Detais for the REDIS*/
inst_parameter_group_name = "default.redis3.2"

/*REDIS Instance Cluster Mode Detais, Number of Nodes on Cluster*/
inst_num_node_groups = "1"

/*REDIS Instance Cluster Mode Detais, Replicas per Node on Cluster*/
inst_replicas_per_node_group = "2"

/*REDIS Instance Maintanance Window Detais*/
inst_maintenance_window = "Mon:03:00-Mon:04:30"

/*REDIS Instance Backup Window Detais*/
inst_backup_window = "Mon:02:00-Mon:03:00"

/*REDIS Instance Snapshot Retention Period*/
inst_snapshot_retention_limit = "7"

/*REDIS Instance Automatic Failover (true/false)*/
inst_failover = "true"

/*Your AWS ENVIRONMENT AWS KEY*/
acs_key = ""

/*YOUR AWS ENVIRONMENT SECRET KEY*/
sec_key = ""

/*Region where you need the REDIS to be created*/
region  = ""

/*Instance Type, based on the memory and CPU requirements mention that*/
inst_type   = ""

/*Mention the Deployment Tag Value*/
inst_tag1   = ""

/*Mention the Environment Tag Value*/
inst_tag2   = ""

/*Mention the Product Tag Value*/
inst_tag3   = ""

/*Mention the Name Tag Value*/
inst_tag4   = ""

/*Availability Zone <region>a or <region>b or <region>c*/
avail_zone  = ""
