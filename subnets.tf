resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.20.3.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Public-Subnet"
  }
}

resource "aws_subnet" "pvt_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.20.4.0/24"

  tags = {
    Name = "Private-Subnet"
  }
}