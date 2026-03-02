#Locals and Data Sources


provider "aws"{
  region = var.aws_region
}

locals {
  name_tag = var.instance_type == "t3.micro" ? "Micro instance" : "Standard instance"
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
resource "aws_instance" "terraform_ec4" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  tags = {
    Name = local.name_tag
  }
}

