#Workspace
provider "aws"{
  region = var.aws_region
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}


resource "aws_instance" "terraform_ec6" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  tags = {
    Name = terraform.workspace
    Environment = terraform.workspace
  }

  
}

