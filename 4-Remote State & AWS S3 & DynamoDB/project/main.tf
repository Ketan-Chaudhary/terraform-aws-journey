terraform {
  backend "s3" {
    bucket = "ketan-terraform-state-bucket-new"
    key = "dev/network/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}