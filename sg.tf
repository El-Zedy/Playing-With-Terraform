############# PUBLIC SG #######################
resource "aws_security_group" "pub-ec2-sg" {
  name        = "allow_ssh_http"
  description = "Allow inbound http and ssh from any IP"
  vpc_id      = aws_vpc.main.id

  # HTTP access
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks_allow_all
  }
  # SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks_allow_all
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks_allow_all
  }

  tags = {
    Name = "Allow SSH and HTTP"
  }
}

################### PRIVATE SG #############################
resource "aws_security_group" "private-ec2-sg" {
  name        = "allow_ssh"
  description = "Allow inbound ssh from any IP"
  vpc_id      = aws_vpc.main.id

  # SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks_allow_all
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks_allow_all
  }

  tags = {
    Name = "Allow SSH Only"
  }
}