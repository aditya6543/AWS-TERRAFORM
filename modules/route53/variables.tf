variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone (e.g., example.com)."
  type        = string
}

variable "app_dns_name" {
  description = "The subdomain for the application (e.g., www, app)."
  type        = string
}

variable "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer."
  type        = string
}

variable "alb_zone_id" {
  description = "The zone ID of the Application Load Balancer."
  type        = string
}