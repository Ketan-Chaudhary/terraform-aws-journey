
# 🗓️ Day 3: Resource Dependencies & Data Sources + AWS VPC Project

## 🎯 Objective

- Learn how Terraform handles resource dependencies (`depends_on`, implicit dependency)
- Use data sources to reference existing AWS resources
- Build a custom VPC with subnets and an Internet Gateway

---

## 📚 Terraform Concepts

### 1. Implicit Dependency

Terraform understands the order of resource creation based on reference usage:

```hcl
subnet_id = aws_subnet.example.id
```

### 2. Explicit Dependency

Use `depends_on` when Terraform can't infer the dependency:

```hcl
resource "aws_instance" "web" {
  depends_on = [aws_security_group.web_sg]
}
```

### 3. Data Source

Used to fetch existing resources that aren’t created by Terraform:

```hcl
data "aws_availability_zones" "available" {}

output "zones" {
  value = data.aws_availability_zones.available.names
}
```

---

## 🛠️ Project: Build a VPC with Subnets and Internet Gateway

### 🧩 What You’ll Build

- A VPC
- Two subnets in different AZs
- An Internet Gateway
- Route table connected to subnets

---

## 📁 Folder Structure

```bash
terraform-vpc/
├── main.tf
├── variables.tf
├── outputs.tf
```