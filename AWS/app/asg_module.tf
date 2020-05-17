module "app1" { 
source = "./module" 
region = "us-east-1" 
} 

 module "app1-london" { 

source = "./module" 

region = "eu-west-2" 

} 

 