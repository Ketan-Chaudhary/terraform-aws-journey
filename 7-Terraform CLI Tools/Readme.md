# 🗓️ Day 7: Terraform CLI Tools + AWS CloudWatch Monitoring

## 🎯 Objective

* Learn about essential Terraform CLI commands:

  * `fmt`, `validate`, `taint`, `import`, `refresh`, `console`
* Use Terraform to enable CloudWatch monitoring on an EC2 instance
* Understand how to troubleshoot and interact with your Terraform-managed infrastructure

---

## 📚 Terraform Concepts

### ✅ Key Terraform CLI Commands

| Command              | Purpose                                              |
| -------------------- | ---------------------------------------------------- |
| `terraform fmt`      | Formats `.tf` files to canonical style               |
| `terraform validate` | Checks configuration syntax and logic                |
| `terraform taint`    | Forces recreation of a specific resource             |
| `terraform import`   | Brings existing resources into Terraform management  |
| `terraform refresh`  | Syncs state with real infrastructure                 |
| `terraform console`  | Opens an interactive console to evaluate expressions |

---

## 🛠️ Project: Enable CloudWatch Monitoring on EC2 Instance

You’ll create:

* An EC2 instance with detailed monitoring enabled
* A CloudWatch alarm for CPU usage

---

## 📁 Folder Structure

```bash
terraform-cloudwatch/
├── main.tf
├── variables.tf
├── outputs.tf
```

---

## 🧾 `main.tf`

> *(Contents of `main.tf` to be written based on your specific configuration)*

---

## 🧪 CLI Features to Try

### 🔁 `terraform taint`

Force re-creation of the EC2 instance:

```bash
terraform taint aws_instance.monitored
terraform apply
```

---

### 🔁 `terraform import` (Advanced)

If you create an EC2 manually, import it:

```bash
terraform import aws_instance.monitored i-0abcd1234ef567890
```

---

### 🧮 `terraform console`

Test an expression:

```bash
terraform console
> length(data.aws_subnet_ids.default.ids)
```

---

## 🧹 Cleanup

Destroy all infrastructure:

```bash
terraform destroy
```