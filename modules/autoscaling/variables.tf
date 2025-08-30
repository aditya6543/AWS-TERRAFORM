variable "project_name" {
  description = "The name of the project."
  type        = string
}

variable "environment" {
  description = "The environment name (e.g., dev, prod)."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs for EC2 instances."
  type        = list(string)
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
}

variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile to attach to EC2 instances."
  type        = string
}

variable "alb_sg_id" {
  description = "The ID of the ALB security group to allow traffic from."
  type        = string
}

variable "web_target_group_arn" {
  description = "The ARN of the ALB target group to attach the ASG to."
  type        = string
}

variable "min_size" {
  description = "The minimum number of instances in the ASG."
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum number of instances in the ASG."
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "The desired number of instances in the ASG."
  type        = number
  default     = 1
}