variable "aws_region" {
  description = "AWS region for the deployment."
  type        = string
}

variable "project_name" {
  description = "The name of the project."
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., 'dev')."
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the application."
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate for the ALB."
  type        = string
}

variable "domain_name" {
  description = "The domain name managed in Route 53 (e.g., example.com)."
  type        = string
}

variable "app_dns_name" {
  description = "The subdomain for the application (e.g., www, app)."
  type        = string
}