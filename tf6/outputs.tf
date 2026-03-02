output "instance_public_ip" {
  value = aws_instance.terraform_ec6.public_ip
  description = "Public IP of the EC2 instance"
}

output "terraform_workspace" {
  value = terraform.workspace
  description = "The Terraform workspace being used"
}