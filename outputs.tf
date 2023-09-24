output "bucket_id" {
  description = "ID of the bucket"
  value       = aws_s3_bucket.tfstate.id
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.tfstate.bucket_domain_name
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = aws_dynamodb_table.tf_lock.name
}
