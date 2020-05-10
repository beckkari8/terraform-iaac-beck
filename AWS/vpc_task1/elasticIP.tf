resource "aws_eip" "nat" {
  # instance = "${aws_instance.web.id}"
  vpc      = true
  tags = "${var.tags}"
}