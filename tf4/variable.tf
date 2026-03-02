variable aws_region {
  type        = string
  default     = "eu-north-1"
  description = "description1"
}
variable instance_type {
  type        = string
  default     = "t3.micro"
  description = "description2"
}
variable instance_name {
  type        = string
  default     = "MySecondTerraformEC2"
  description = "description3"
}

variable bucket_name {
  type        = string
  default     = "my-bucket-terraform-3434343"
  description = "description3"
}

