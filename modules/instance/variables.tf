variable "subnet_id" {
  type = string
}

variable "name" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)
}