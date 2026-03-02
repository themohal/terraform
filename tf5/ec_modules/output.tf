output "instance_public_ip" {
  value = aws_instance.terraform_ec5.public_ip
  description = "Public IP of the EC2 instance"
}
