#Terraform: Modules Explained | Local vs Remote Modules
provider "aws" {
  region = "eu-north-1"
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



module "ec2_modules" {
  source = "./ec_modules"
  ami = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  name = "MyEC2Module"
}

