resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pvt_sub.id

  tags = {
    Name = "Nat Gateway"
  }
  
  depends_on = [aws_internet_gateway.igw]
}