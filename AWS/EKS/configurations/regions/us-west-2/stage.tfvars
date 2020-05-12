environment = "stage"
region = "us-west-2"
s3_bucket = "beck-terraform-eks"                     #Will be used to set backend.tf
s3_folder_project = "application"                    #Will be used to set backend.tf
s3_folder_region = "us-east-1"                       #Will be used to set backend.tf
s3_folder_type = "state"                             #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_oregon"    #Will be used to set backend.tf

vpc_id = "vpc-0f31d6080e30249be"
subnet1 = "subnet-0ee5b230bb1cf772d"
subnet2 = "subnet-0dc17c35a5c7ee25c"
subnet3 = "subnet-051fe9935ce2da711"
cluster_name = "cluster_oregon"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
