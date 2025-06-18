output "aurora_endpoint" {
  value = module.rds.aurora_endpoint
}

output "ec2_public_ip" {
  value = module.ec2.ec2_public_ip
}
