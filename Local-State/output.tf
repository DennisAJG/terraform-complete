output "bucket_id" {
  description = "ID da bucket"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN da Bucket"
  value       = aws_s3_bucket.bucket.arn
}