output "pub-ec2-ip" {
  value = aws_instance.my-pub-ec2.public_ip
}