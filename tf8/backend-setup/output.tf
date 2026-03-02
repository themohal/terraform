output s3_bucket_name {
  value       = aws_s3_bucket.tf_state.bucket
  description = "The name of the S3 bucket used for Terraform state"

}

output dynamodb_table_name {
  value       = aws_dynamodb_table.tf_locks.name
  description = "The name of the DynamoDB table used for Terraform locks"
}
