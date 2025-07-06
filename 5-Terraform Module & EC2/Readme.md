# 🗓️ Day 5: Terraform Modules + AWS EC2 Project

## 🎯 Objective

- Learn how to create and use Terraform modules
- Provision an EC2 instance using a custom reusable module
- Keep code clean and DRY (Don't Repeat Yourself)

---

## 📚 Terraform Concepts

### 🔁 What is a Module?

A **module** is a container for multiple resources that can be reused.  
You can:

- Split code into reusable pieces
- Version and share modules
- Call child modules from your root module

---

## 🛠️ Project: Provision EC2 Instance Using a Module

### You’ll create:

- A **root module** (`main.tf`) that calls
- A custom **EC2 module** stored in a subfolder

---

## 📁 Folder Structure

```bash
terraform-ec2-with-module/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── ec2_instance/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```
