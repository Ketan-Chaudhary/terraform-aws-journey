provider "aws" {
  region = var.aws_region 
}


resource "aws_iam_user" "new_user" {
  name = var.iam_user_name
}

resource "aws_iam_role" "new_role" {
  name = var.iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
        Action = "sts:AssumeRole"
        Principal = {
            Service = "ec2.amazonaws.com"
        }
        Effect = "Allow"
        Sid = ""
    }]
  })
}