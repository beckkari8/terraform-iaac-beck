resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    Name = "BECK"
  }
}

  output "instance_id"{
      value ="${aws_instance.web.id}"
  }



  output "instance_Arn"{
      value ="${aws_instance.web.arn}"
  }



  output "instance_IP"{
      value ="${aws_instance.web.public_ip}"
  }



  output "instance_AZ"{
      value ="${aws_instance.web.availability_zone}"
  }

