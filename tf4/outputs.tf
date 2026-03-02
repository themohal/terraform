output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
  description = "Name of the S3 bucket"
}

output "instance_public_ip" {
  value = aws_instance.terraform_ec5.public_ip
  description = "Public IP of the EC2 instance"
}