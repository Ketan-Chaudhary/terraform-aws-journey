provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags = var.tags

  versioning {
    enabled = var.enable_versioning
  }

  lifecycle {
    prevent_destroy = true
  }
}