# 🗓️ Day 2: Terraform Configuration Basics + AWS S3 Project

## 🎯 Objective

- Learn about variables, outputs, resource blocks, and state files.
- Use Terraform to create a **versioned** and **tagged** S3 bucket on AWS.

---

## 📚 Terraform Concepts

### 1. Resource Block

Defines infrastructure to be managed.

**Example:**

```hcl
resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-name"
}
```
### 2. Variables
Used to parameterize configuration (make it reusable).

Example:
```hcl
variable "bucket_name" {
  type    = string
  default = "my-default-bucket"
}
```
### 3. Outputs
Exposes useful data after applying the configuration.

Example:

```hcl
output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
```

### 4. State File
Tracks infrastructure managed by Terraform.

Never manually edit the state file.

Stored locally by default as terraform.tfstate.

## 🛠️ Mini Project: Create a Versioned and Tagged S3 Bucket
Step 1: Define Variables
```hcl
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-versioned-bucket"
}

variable "environment" {
  description = "Environment tag for the S3 bucket"
  type        = string
  default     = "dev"
}
```
Step 2: Create the S3 Bucket Resource
```hcl
resource "aws_s3_bucket" "versioned_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
    Name        = var.bucket_name
  }
}
```
Step 3: Enable Versioning on the S3 Bucket

```hcl
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.versioned_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
```
Step 4: Output the Bucket Name
```hcl
output "bucket_name_output" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.versioned_bucket.bucket
}
```