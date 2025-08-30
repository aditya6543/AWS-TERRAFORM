output "alb_dns_name" {
  description = "The DNS name of the ALB."
  value       = aws_lb.main.dns_name
}

output "alb_zone_id" {
  description = "The zone ID of the ALB."
  value       = aws_lb.main.zone_id
}

output "web_target_group_arn" {
  description = "The ARN of the web target group."
  value       = aws_lb_target_group.web.arn
}

output "alb_sg_id" {
  description = "The ID of the ALB's security group."
  value       = aws_security_group.alb_sg.id
}