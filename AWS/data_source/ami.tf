data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}


resource "aws_key_pair" "us-east-1-key" {
  key_name   = "becks_bastion1"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
   
        # BOOTSTRAPPING
provisioner "remote-exec" {
     connection {
    type     = "ssh"
    user     = "centos"
    private_key = "${file("~/.ssh/id_rsa")}"
    host     = "${self.public_ip}"
  }

    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
    ]
  }

  tags = {
    Name = "centos"
  }
}
output "centos" {
  value = "${data.aws_ami.centos.id} ${aws_instance.centos.public_ip}"
}