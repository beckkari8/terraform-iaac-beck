resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-0d6621c01e8c2de2c"
  subnet_id     = "${aws_subnet.public1.id}"
  # (resource arguments)
}
