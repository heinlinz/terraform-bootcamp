output "vpc_id" {
  value = module.vpc.vpc_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "security_group_id" {
  value = module.ec2.security_group_id
}

output "rds_endpoint" {
  value = module.db.rds_endpoint
}

output "alb_dns_name" {
  value = module.alb.dns_name
}