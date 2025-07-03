terraform {
  backend "aws" {
    bucket = "ketan-terraform-state-bucket-new"
    key = "dev/network/terraform.tfstate"
    region = "ap-south-1"
    aws_dynamodb_table = "terraform-locks"
    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region
}