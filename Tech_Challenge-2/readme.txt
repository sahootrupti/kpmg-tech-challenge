There are two methods to get instance metadata.

Method-1
------------
Configure AWS CLI and Run below pre-requisites in one EC2 machine:
aws configure
AWS Access Key ID [None]: ***************
AWS Secret Access Key [None]: ***************************************
Default region name [None]: *****
Default output format [None]: json
Run Below command:
aws ec2 describe-instance-attribute --instance-id <EC2_instance_id> --attribute <mention_below_any_attribute> --region <your_region>
Attributes:
-----------
ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
hostname
instance-action
instance-id
instance-type
kernel-id
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-hostname
public-ipv4
public-keys/
reservation-id
security-groups
-------------------------------------------------------
Method-2:
-----------
Log into respective EC2 instance and run below two commands:
curl -X GET http://169.254.169.254/latest/meta-data/

