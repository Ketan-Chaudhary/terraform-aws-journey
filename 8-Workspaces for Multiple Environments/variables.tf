variable "aws_region" {
  default = "ap-south-1"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "Admin123"
  sensitive = true
}

