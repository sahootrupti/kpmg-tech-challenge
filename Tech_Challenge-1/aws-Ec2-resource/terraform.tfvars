/*Please Provide the VPC ID*/
vpc_id  = ""

/*Provide the CIDR Value that need access to this EC2 Instance*/
tfcidr    = ""

/*Network Access (CIDR) Description*/
cidr_desc = ""

/*Provide the Security Group Name for this*/
sg_group    = ""

/*Securioty Group Description*/
sg_desc  = ""

/*EC2 Instance Name that needs to be created*/
inst_name   = ""

/*Region where you need the EC2 Instance to be created*/
region  = ""

/*Instance Type, based on the memory and CPU requirements mention that*/
inst_type   = ""

/*Your AWS ENVIRONMENT AWS KEY*/
acs_key = ""

/*YOUR AWS ENVIRONMENT SECRET KEY*/
sec_key = ""

/*Mention the Deployment Tag Value*/
inst_tag1   = ""

/*Mention the Environment Tag Value*/
inst_tag3   = ""

/*Mention the Product Tag Value*/
inst_tag2   = ""

/*Mention the SSH PublicKey (id_rsa.pub) Value to generate the PEM Key*/
ssh_key   = ""

/*Availability Zone <region>a or <region>b or <region>c*/
avail_zone  = ""

/*EC2 Instance PEM Key Name*/
key_pair    = ""

/*AMI that needs to be used for EC2 Instance To be Created*/
ami_name = ""

/*PORT Detais for the EC2 Instance*/
tfport  = "22"

/*Storage Required for the EC2 Instance*/
tfvol  = "10"

/*Storage Deletion after Instance Termination true/false*/
vol_del  = "true"
