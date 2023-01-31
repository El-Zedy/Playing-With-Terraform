resource "aws_route_table" "puplic_routeT" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = "lab2-puplic_routet"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.puplic_routeT.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.mygw.id
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.main_sub[0].id
  route_table_id = aws_route_table.puplic_routeT.id
}

################### PRIVATE ############################

resource "aws_route_table" "private_routT" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Name" = "lab2-private_routet"
  }
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_routT.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_nat_gateway.mynat.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.main_sub[1].id
  route_table_id = aws_route_table.private_routT.id
}