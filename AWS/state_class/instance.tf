resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-0323c3dd2da7fb37d"
  # (resource arguments)
}
