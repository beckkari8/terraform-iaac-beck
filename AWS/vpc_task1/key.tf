resource "aws_key_pair" "us-east-1-key" {
  key_name   = "vpc_task_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_key_pair" "us-east-1-key2" {
  key_name   = "vpc_task_key2"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}