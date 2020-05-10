region   = "us-west-2"
region_name = "Oregon"
vpc_cidr = "192.168.0.0/16"

public_cidr1    = "192.168.101.0/24"
public_cidr2    = "192.168.102.0/24"
public_cidr3    = "192.168.103.0/24"

az1             = "a"
az2             = "b"
az3             = "c"

private_cidr1    = "192.168.1.0/24"
private_cidr2    = "192.168.2.0/24"
private_cidr3    = "192.168.3.0/24"

tags = {
    Name         = "VPC_project"
    Environment  = "Dev"
    Department   = "IT"
    Team         = "Inftrastructure"
    Created_by   = "Beck"
}
