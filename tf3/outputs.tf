output "instance_name_tag" {
  value = local.name_tag
}
output "instance_public_ip" {
  value = aws_instance.terraform_ec4.public_ip
  description = "Public IP of the EC2 instance"
}