resource "aws_internet_gateway" "mygw" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = "lab2-IGW"
  }
} 