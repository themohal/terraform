#Simple EC2 Instance Creation
provider "aws"{
  region = "eu-north-1"
}

resource "aws_instance" "terraform_ec2" {
  ami           = "ami-056335ec4a8783947"
  instance_type = "t3.micro"

  tags = {
    Name = "FarjadTerraformEC2"
  }
}

