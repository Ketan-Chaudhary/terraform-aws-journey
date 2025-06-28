variable "aws_region" {
  description = "AWS Region in which resources are deployed"
  type = string
  default = "ap-south-1"
}

variable "iam_user_name" {
  description = "IAM username to be created"
  type = string
}

variable "iam_role_name" {
  description = "IAM role name"
  type = string
}

