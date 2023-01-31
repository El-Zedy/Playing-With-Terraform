resource "aws_subnet" "main_sub" {
  count                   = length(var.subnets_cidr)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets_cidr[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch[count.index]
  tags = {
    "Name" = var.subnets_name[count.index]
  }
}

/* resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr
  tags = {
    "Name" = "Lab2-priv-Subnet"
  }
} */
