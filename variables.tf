variable "vpc_cidr_block" {
  description = "Cidr range for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "name" {
  description = "Name to be used on VPC created"
  type        = string
  default     = "test" 
}

variable "region" {
  description = "Name of the region"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "Name of the db_username"
  type        = string
  default     = "admin"
}

variable "database_name" {
  description = "Name of the db_name"
  type        = string
  default     = "test"
}
