output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

output "region" {
  value = var.aws_region
}