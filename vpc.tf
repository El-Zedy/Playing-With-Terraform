resource "aws_vpc" "main" {
  cidr_block = var.cidr
  tags = {
    "Name" = "Lab2-vpc"
  }
}