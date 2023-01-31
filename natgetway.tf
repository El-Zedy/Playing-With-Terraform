resource "aws_eip" "nat_ip" {
  tags = {
    "Name" = "Lab2-eip"
  }
}
resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.main_sub[0].id
  tags = {
    "Name" = "Lab2-nat-gw"
  }
}