# Common
profile      = "e2esaprofile"
region       = "us-east-1"
instance     = "t2.medium"

pkr_bucket_name_ubuntu2204_aws ="ubuntu22-nginx-aws"
pkr_bucket_name_rhel9_aws ="rhel9-nginx-aws"

owner      = "e2esa"
department = "education"

# Ubuntu
ssh_username_ubuntu = "ubuntu"
ami_name_ubuntu   = "e2esa-aws-ubuntu-golden"
source_ami_ubuntu = "ami-053b0d53c279acc90" # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
ami_regions = ["us-east-1","us-west-1"]

# RHEL
ssh_username_rhel = "ec2-user"
ami_name_rhel   = "e2esa-aws-rhel-golden"
source_ami_rhel = "ami-026ebd4cfe2c043b2" # Red Hat Enterprise Linux 9 (HVM), SSD Volume Type

owner      = "e2esa"
department = "education"

# Windows
/*
winrm_username = "Administrator"
winrm_password ="SuperS3cr3t!!!!"
ami_name_win   = "e2esa-aws-win-golden"
source_ami_win = "ami-0d86c69530d0a048e" # Microsoft Windows Server 2022 Full Locale English AMI provided by Amazon
*/
