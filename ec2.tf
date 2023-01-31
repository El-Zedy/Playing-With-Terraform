resource "aws_instance" "my-pub-ec2" {
  instance_type          = var.instance_type
  ami                    = var.ami-id
  vpc_security_group_ids = [aws_security_group.pub-ec2-sg.id]
  subnet_id              = aws_subnet.main_sub[0].id
  user_data              = file("userdata.sh")
  tags = {
    "Name" = "Lab2-pub-ec2"
  }
}

resource "aws_instance" "my-priv-ec2" {
  instance_type          = var.instance_type
  ami                    = var.ami-id
  vpc_security_group_ids = [aws_security_group.private-ec2-sg.id]
  subnet_id              = aws_subnet.main_sub[1].id
  user_data              = file("userdata.sh")
  tags = {
    "Name" = "Lab2-priv-ec2"
  }
}