output "secret_id" {
  value = aws_secretsmanager_secret.db_secret.id
}
