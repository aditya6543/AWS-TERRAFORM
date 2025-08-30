output "ec2_instance_profile_arn" {
  description = "The ARN of the EC2 instance profile."
  value       = aws_iam_instance_profile.ec2_instance_profile.arn
}

output "ec2_instance_profile_name" {
  description = "The Name of the EC2 instance profile."
  value       = aws_iam_instance_profile.ec2_instance_profile.name
}