variable aws_region {
  type        = string
  default     = "eu-north-1"
  description = "AWS region"
}

variable  bucket_name {
  type        = string
  default     = "farjad-tf-state-bucket"
  description = "S3 bucket name for Terraform state"
}

variable lock_table {
  type        = string
  default     = "farjad-tf-locks-table"
  description = "DynamoDB table name for Terraform locks"
}

variable environment {
  type        = string
  default     = "dev"
  description = "Environment name"
}
