
# Terraform AWS Bootcamp 🚀

A 14-day hands-on journey to learn Terraform by provisioning real AWS infrastructure — one project per day. This repository contains daily folders with code and configurations tied to AWS services and Terraform concepts.

---

## 🌟 Goal

Master Terraform fundamentals through practical, real-world use cases using AWS services like IAM, S3, VPC, EC2, Lambda, CloudFront, RDS, and more.

---

## 📅 Day-Wise Plan

| Day | Terraform Concept                        | AWS Service       | Project Description                              |
|-----|-------------------------------------------|-------------------|--------------------------------------------------|
| 1   | Providers, Authentication                 | IAM               | Create IAM users and roles                       |
| 2   | Variables, Outputs, Resource Blocks       | S3                | Create versioned, tagged S3 bucket               |
| 3   | Dependencies, Data Sources                | VPC               | Create VPC with subnets and Internet Gateway     |
| 4   | Remote State                              | S3 + DynamoDB     | Configure remote backend                         |
| 5   | Modules                                   | EC2               | Launch EC2 via reusable module                   |
| 6   | Dynamic Blocks, Conditionals              | Security Groups   | Create dynamic security groups                   |
| 7   | CLI Tools & Formatting                    | CloudWatch        | Enable monitoring for EC2                        |
| 8   | Workspaces                                | RDS               | Deploy multi-env RDS instance                    |
| 9   | Templates, User Data                      | EC2               | Render user-data to bootstrap EC2                |
| 10  | Zip File Handling                         | Lambda            | Deploy Lambda function with IAM role             |
| 11  | Scaling & Load Balancing                  | ALB + AutoScaling | Deploy a scalable web app                        |
| 12  | CDN                                        | CloudFront + S3   | Host static site with CloudFront                 |
| 13  | Terraform Validation                      | SNS               | Use validate and test framework                  |
| 14  | CI/CD Integration                         | GitHub Actions    | Deploy infra with CI/CD pipeline                 |

---

## 📁 Folder Structure

```bash
terraform-aws-bootcamp/
├── day-01-iam/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── README.md
├── day-02-s3/
├── day-03-vpc/
├── ...
└── day-14-ci-cd/
````

Each folder contains:

* Terraform config files
* README.md with instructions and explanations
* Optional cleanup script (destroy.sh)

---

## 🚀 Getting Started

1. Install Terraform: [https://developer.hashicorp.com/terraform/install](https://developer.hashicorp.com/terraform/install)
2. Configure AWS CLI:

```bash
aws configure
```

3. Navigate to any day's folder:

```bash
cd day-02-s3
terraform init
terraform apply
```

4. Confirm with yes when prompted.

---

## 🧹 Cleanup

To destroy the infrastructure:

```bash
terraform destroy
```

## 🧠 Concepts Covered

* Infrastructure as Code (IaC)
* Providers, Variables, Outputs
* Modules and Workspaces
* Remote State Management
* Dynamic Blocks and Conditional Logic
* CI/CD Integration with Terraform
* AWS service provisioning in real-world use cases

---

## 🧑‍💻 Prerequisites

* AWS account
* AWS CLI installed and configured
* Terraform v1.4+ installed

---

