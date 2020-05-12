# data "aws_ami" "centos" {
#     most_recent = true                  #find latest
#     owners = ["679593333241"]
# }

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



output "ami" {
    value = "${data.aws_ami.centos.id}"
}