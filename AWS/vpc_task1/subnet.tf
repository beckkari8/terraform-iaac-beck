resource "aws_subnet" "private1" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.private_cidr1}"
  availability_zone       = "${var.region}${var.az1}"
  tags                    = "${var.tags}"
}


resource "aws_subnet" "private2" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.private_cidr2}"
  availability_zone       = "${var.region}${var.az2}"
  tags                    = "${var.tags}"
}

resource "aws_subnet" "private3" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.private_cidr3}"
  availability_zone       = "${var.region}${var.az3}"
  tags                    = "${var.tags}"
}




resource "aws_subnet" "public1" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.public_cidr1}"
  availability_zone       = "${var.region}${var.az1}"
  tags                    = "${var.tags}"
  map_public_ip_on_launch = true
}



resource "aws_subnet" "public2" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.public_cidr2}"
  availability_zone       = "${var.region}${var.az2}" 
  tags                  = "${var.tags}"
  map_public_ip_on_launch = true
}


resource "aws_subnet" "public3" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.public_cidr3}"
  availability_zone       = "${var.region}${var.az3}"
  tags                  = "${var.tags}"
  map_public_ip_on_launch = true
}





