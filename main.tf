provider "aws" {
  region = var.region
}

module "iam" {
  source = "./modules/iam"
  region = var.region
}

module "secrets" {
  source = "./modules/secrets"
  db_username = var.db_username
  db_password = var.db_password
}

module "rds" {
  source = "./modules/rds"
  db_username = var.db_username
  db_password = var.db_password
  security_group_id = var.security_group_id
  subnet_id_1 = var.subnet_id_1
  subnet_id_2 = var.subnet_id_2
}

module "ec2" {
  source = "./modules/ec2"
  ec2_subnet_id = var.ec2_subnet_id
  security_group_id = var.security_group_id
  key_name = var.key_name
  iam_instance_profile = module.iam.instance_profile_name
}
