Here's your Day 8 content converted into **Markdown** format:
# 🗓️ Day 8: Workspaces for Multiple Environments + AWS RDS Project

## 🎯 Objective
- Learn how to use **Terraform workspaces** to manage different environments **without duplicating code**.
- Deploy a simple **RDS (MySQL)** instance in `dev` and `prod` using the same configuration.

---

## 📚 Terraform Concepts

### 1. What Are Workspaces?
- Workspaces allow you to keep **separate state files per environment** (e.g., `dev`, `prod`) **without duplicating Terraform code**.
- The default workspace is called `default`.

#### 👉 Create or switch workspaces:

```bash
terraform workspace new dev
terraform workspace new prod

terraform workspace select dev
````

---

### 2. Workspace-Specific Configuration

You can use the built-in `terraform.workspace` variable to customize your configuration per environment:

```hcl
name = "db-${terraform.workspace}"
```

This will generate environment-specific resource names like `db-dev`, `db-prod`, etc.

---

## 🛠️ Project: Deploy RDS with Multiple Workspaces

### 📁 Folder Structure

```bash
terraform-rds-workspaces/
├── main.tf
├── variables.tf
├── outputs.tf
```
