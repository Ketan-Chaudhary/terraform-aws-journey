# 🗓️ Day 9: Dynamic Configurations with `templatefile` & `locals` + Auto-Provisioned EC2 Web Server

## 🎯 Objective

Learn how to:

- Use `templatefile` for dynamic user data scripts
- Use `locals` to simplify repetitive values
- Launch an EC2 instance that automatically installs and runs NGINX

---

## 📚 Terraform Concepts

### 1. `templatefile`

Loads a script file and injects variables into it:

```hcl
user_data = templatefile("${path.module}/scripts/init.sh", {
  server_name = "MyApp"
})
````

---

### 2. `locals`

Stores reusable computed values:

```hcl
locals {
  app_tag = "web-${terraform.workspace}"
}
```

---

## 🛠️ Project: Auto-Provisioned NGINX Web Server

### 📁 Folder Structure

```bash
terraform-ec2-webserver/
├── main.tf
├── variables.tf
├── outputs.tf
├── scripts/
│   └── user_data.sh
```