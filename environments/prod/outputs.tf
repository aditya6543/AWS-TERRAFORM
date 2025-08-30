output "application_url" {
  description = "The URL of the deployed web application."
  value       = module.route53.app_url
}

output "vpc_id" {
  description = "The ID of the created VPC."
  value       = module.vpc.vpc_id
}