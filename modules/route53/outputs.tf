output "app_url" {
  description = "The FQDN of the application."
  value       = "https://${aws_route53_record.app.fqdn}"
}