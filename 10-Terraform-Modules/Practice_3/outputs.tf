# Output variable definitions

output "arn" {
  description = "ARN of the S3 Bucket"
  value       = module.website_s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = module.website_s3_bucket.name
}

output "domain" {
  description = "Domain Name of the bucket"
  value       = module.website_s3_bucket.domain
}

output "endpoint" {
  description = "Endpoint Information of the bucket"
  value       = module.website_s3_bucket.endpoint
}