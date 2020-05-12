environment = "qa"
region = "us-east-2"
s3_bucket = "beck-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_ohio"   #Will be used to set backend.tf

vpc_id = "vpc-002f8b6424e6d7f0f"
subnet1 = "subnet-034ebfff08047250a"
subnet2 = "subnet-0259cbd2d64a5a880"
subnet3 = "subnet-07ec3130b2d59d98a"
cluster_name = "cluster_ohio"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
