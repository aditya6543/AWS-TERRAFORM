module "vpc" {
  source = "../../modules/vpc"

  project_name     = var.project_name
  environment      = var.environment
  aws_region       = var.aws_region
  vpc_cidr_block   = var.vpc_cidr_block
  public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnet_cidrs = ["10.10.101.0/24", "10.10.102.0/24"]
  enable_nat_gateway   = true # Can be set to false to save costs
}

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "alb" {
  source = "../../modules/alb"

  project_name        = var.project_name
  environment         = var.environment
  vpc_id              = module.vpc.vpc_id
  public_subnet_ids   = module.vpc.public_subnet_ids
  acm_certificate_arn = var.acm_certificate_arn
}

module "autoscaling" {
  source = "../../modules/autoscaling"

  project_name              = var.project_name
  environment               = var.environment
  vpc_id                    = module.vpc.vpc_id
  private_subnet_ids        = module.vpc.private_subnet_ids
  instance_type             = var.instance_type
  iam_instance_profile_name = module.iam.ec2_instance_profile_name
  alb_sg_id                 = module.alb.alb_sg_id
  web_target_group_arn      = module.alb.web_target_group_arn
  min_size                  = 2
  max_size                  = 4
  desired_capacity          = 2
}

module "route53" {
  source = "../../modules/route53"

  domain_name  = var.domain_name
  app_dns_name = var.app_dns_name
  alb_dns_name = module.alb.alb_dns_name
  alb_zone_id  = module.alb.alb_zone_id
}