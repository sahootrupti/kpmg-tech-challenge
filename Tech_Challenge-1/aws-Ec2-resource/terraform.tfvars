/*Please Provide the VPC ID*/
vpc_id  = "********"

/*Provide the CIDR Value that need access to this EC2 Instance*/
tfcidr    = "*********"

/*Network Access (CIDR) Description*/
cidr_desc = "Access-CIDR"

/*Provide the Security Group Name for this*/
sg_group    = "Demo"

/*Securioty Group Description*/
sg_desc  = "Demo"

/*EC2 Instance Name that needs to be created*/
inst_name   = "Demo"

/*Region where you need the EC2 Instance to be created*/
region  = "us-east-2"

/*Instance Type, based on the memory and CPU requirements mention that*/
inst_type   = "t2.medium"

/*Your AWS ENVIRONMENT AWS KEY*/
acs_key = "*********"

/*YOUR AWS ENVIRONMENT SECRET KEY*/
sec_key = "***********************"

/*Mention the Deployment Tag Value*/
tag01   = "Demo"

/*Mention the Environment Tag Value*/
tag02   = "Demo"

/*Mention the Product Tag Value*/
tag03   = "Demo"

/*Mention the SSH PublicKey (id_rsa.pub) Value to generate the PEM Key*/
ssh_key   = "ssh-rsa ***************"

/*Availability Zone <region>a or <region>b or <region>c*/
avail_zone  = "us-east-2"

/*EC2 Instance PEM Key Name*/
key_pair    = "Demo-Key"

/*AMI that needs to be used for EC2 Instance To be Created*/
ami_name = "ami-***************"

/*PORT Detais for the EC2 Instance*/
tfport  = "22"

/*Storage Required for the EC2 Instance*/
tfvol  = "10"

/*Storage Deletion after Instance Termination true/false*/
vol_del  = "true"
