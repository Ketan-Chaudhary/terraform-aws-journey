# 🗓️ Day 6: Conditionals, Loops & Dynamic Blocks + AWS Security Groups

## 🎯 Objective

Learn how to use:

- `count` for conditional creation  
- `for_each` for iterating over maps/lists  
- `dynamic` blocks to loop through nested structures  

Use these features to create a **customizable AWS Security Group**.

---

## 📚 Terraform Concepts

### 1. `count`

Use `count` to create multiple resources or conditionally create one:

```hcl
resource "aws_instance" "example" {
  count = var.create_instance ? 1 : 0
}
````

---

### 2. `for_each`

Use `for_each` to iterate over a map or a set of strings:

```hcl
resource "aws_s3_bucket" "example" {
  for_each = toset(["dev", "prod"])
  bucket   = "my-bucket-${each.key}"
}
```

---

### 3. `dynamic` block

Use `dynamic` blocks when a nested block (like `ingress`) needs to be generated from a loop:

```hcl
dynamic "ingress" {
  for_each = var.ingress_rules
  content {
    from_port   = ingress.value.from_port
    to_port     = ingress.value.to_port
    protocol    = ingress.value.protocol
    cidr_blocks = ingress.value.cidr_blocks
  }
}
```

---

## 🛠️ Project: Create Dynamic Security Group

Create a reusable and dynamic AWS security group using the above Terraform features.

---

## 📁 Folder Structure

```bash
terraform-dynamic-sg/
├── main.tf
├── variables.tf
├── outputs.tf
```
