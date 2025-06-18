resource "aws_db_subnet_group" "default" {
  name       = "aurora-subnet-group"
  subnet_ids = [
    var.subnet_id_1,
    var.subnet_id_2
  ]
}

resource "aws_rds_cluster" "aurora" {
  cluster_identifier      = "aurora-cluster"
  engine                  = "aurora-mysql"
  master_username         = var.db_username
  master_password         = var.db_password
  skip_final_snapshot     = true
  database_name           = "sampledb"
  vpc_security_group_ids  = [var.security_group_id]
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  identifier              = "aurora-instance-1"
  cluster_identifier      = aws_rds_cluster.aurora.id
  instance_class          = "db.t3.medium"
  engine                  = aws_rds_cluster.aurora.engine
}
