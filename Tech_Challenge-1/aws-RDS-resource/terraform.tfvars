/*Please Provide the VPC ID*/
vpc_id  = ""

/*Provide the CIDR Value that need access to this RDS*/
CIDR    = ""

/*Provide the Security Group Name for this*/
sg_group_sql    = ""

/*Mention the Subnet Group 1 of that VPC*/
db_subnet_id1   = ""

/*Mention the Cubnet Group 2 of that VPC*/
db_subnet_id2   = ""

/*Mention a Subnet Group name*/
db_subnet_grp_name_sql  = ""

/*RDS Instance Name that nees to be created*/
inst_name_sql   = ""

/*Database Name to be Created*/
db_name_sql = ""

/*User name for the RDS*/
db_user_name_sql    = ""

/*Password for this RDS*/
db_user_password_sql    = ""

/*Your AWS ENVIRONMENT AWS KEY*/
acs_key = ""

/*YOUR AWS ENVIRONMENT SECRET KEY*/
sec_key = ""

/*Region where you need the RDS to be created*/
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

/*The Parameter Group Name for the RDS Eg. default.postgres9.6*/
pmtr_grp    = ""

/*Engine Version of the MySQL RDS To be Created*/
eng_ver = ""

/*Do you want this to be across Multiple Zones (true or false)*/
mlt_az  = ""

/*Maintanance Window Eg. Mon:03:00-Mon:03:30*/
maintain    = ""

/*Backup Window Eq. 02:00-03:00*/
bkp_win = ""

/*Number of Days you need the backup to be retained*/
rtn_prd = ""

/*Do you need this to be accessible in Public (true or false)*/
pub_access  = ""

/*PORT Detais for the RDS*/
PORT  = "3306"

/*Storage Required for the RDS*/
stor  = "50"
