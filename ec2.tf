resource "aws_instance" "instance" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name = "lokesh"
  subnet_id = aws_subnet.pub_sub.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.sec_grp.id]

  tags = {
    Name = "Anand-Sai"
  }
}