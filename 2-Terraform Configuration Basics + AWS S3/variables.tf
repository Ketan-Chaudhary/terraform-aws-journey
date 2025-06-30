variable "aws_region" {
  description = "AWS region"
  type = string
  default = "ap-south-1"
}

variable "bucket_name" {
  description = "Unique name of the s3 bucket"
  type = string
}

variable "enable_versioning" {
    description = "enable versioning for s3 bucket"
    type = bool
    default = true
}

variable "tags" {
  description = "Tags to assign to the bucket"
  type = map(string)
  default = {
    "Environment" = "Dev"
    "Owner" = "Ketan"
    "Project" = "Terrafor Learning"
  }
}