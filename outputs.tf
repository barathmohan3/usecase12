output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "aurora_cluster_endpoint" {
  value = module.rds.aurora_cluster_endpoint
}

#output "aurora_cluster_instance_endpoint" {
#  value = module.rds.aurora_cluster_instance_endpoint
#}

