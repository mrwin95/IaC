resource "aws_subnet" "pub_subnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "pub_subnet2" {
  vpc_id = aws_vpc.vpc.id

  cidr_block = "10.0.2.0/24"
  tags = {
    "Name" = "Public Subnet 2"
  }
}
