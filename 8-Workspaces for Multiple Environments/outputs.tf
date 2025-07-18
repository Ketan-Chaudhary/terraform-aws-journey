output "rds_enpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "Environment" {
  value = terraform.workspace
}
