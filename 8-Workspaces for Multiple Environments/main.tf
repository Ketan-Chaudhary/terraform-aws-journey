provider "aws" {
  region = var.aws_region
}

#Fetch default vpc and subnet group for simplicity 
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_db_subnet_group" "db_subnets" {
  name       = "db-student-grou-${terraform.workspace}"
  subnet_ids = data.aws_subnets.default.ids

  tags = {
    Name = "db-subnet-group-${terraform.workspace}"
  }
}

resource "aws_db_instance" "mysql" {
  identifier           = "mysql-${terraform.workspace}"
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.db_subnets.name
  skip_final_snapshot  = true
  publicly_accessible  = true
  multi_az             = false

  tags = {
    Environment = terraform.workspace
    Name        = "mysql-${terraform.workspace}"
  }
}
