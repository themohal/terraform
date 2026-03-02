#S3 Bucket and EC2 Instance Creation 

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

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags={
    Name = "MyS3Bucket"
  }
}

resource "aws_instance" "terraform_ec5" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
depends_on = [aws_s3_bucket.my_bucket]
  
}

