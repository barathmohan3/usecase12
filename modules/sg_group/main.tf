resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Allow MySQL from Web SG"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    cidr_blocks = ["10.0.0.0/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "rds_security_group_aurora_id" {
  description = "Security group ID for the RDS"
  value       = aws_security_group.rds_sg.id 
}

output "ec2_security_group_id" {
  description = "Security group ID for EC2 instances"
  value       = aws_security_group.ec2_sg.id
}
