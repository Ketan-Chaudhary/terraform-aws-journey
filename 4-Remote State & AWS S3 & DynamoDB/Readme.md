# 🗓️ Day 4: Remote State Storage + AWS S3 & DynamoDB Project

## 🎯 Objective

- Understand how Terraform manages state files
- Configure remote backend with:
  - **S3** for storing Terraform state files
  - **DynamoDB** for state locking (prevents simultaneous modifications)

---

## 📚 Terraform Concepts

### 1. Terraform State

- Tracks the real-world resources Terraform manages
- Local by default (`terraform.tfstate`)
- Use remote state for team collaboration or CI/CD

### 2. Backends

- Instruct Terraform where and how to store state
- Common backends include:
  - S3
  - Terraform Cloud
  - Consul

### 3. State Locking

- Prevents multiple people from applying changes at the same time
- Enabled using **DynamoDB** with **S3** backend

---

## 🛠️ Project: Set Up Remote Backend with S3 + DynamoDB

### 📁 Folder Structure

```bash
terraform-backend-setup/
├── backend-setup.tf      # One-time setup for S3 & DynamoDB
├── main.tf               # Project using remote backend
├── variables.tf
├── outputs.tf
```
