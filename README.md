# Terraform S3 Security Lab

A hands-on DevSecOps and Cloud Security lab using Terraform, LocalStack, Checkov, and Trivy to provision and validate secure AWS S3 infrastructure locally.

---

## Project Overview

This project demonstrates how to:

- Provision AWS infrastructure using Terraform
- Emulate AWS services locally with LocalStack
- Create and configure an S3 bucket
- Perform Infrastructure as Code (IaC) security scanning
- Validate S3 security configurations
- Practice DevSecOps workflows in a local environment

The lab focuses on secure infrastructure provisioning and security validation practices commonly used in Cloud Security and DevSecOps environments.

---

## Technologies Used

- Terraform
- LocalStack
- AWS CLI
- Checkov
- Trivy
- Bash
- Python venv

---

## Architecture Diagram

![Architecture Diagram](architecture/terraform-s3-security-lab-diagram.png)

---

## Project Structure

```text
terraform-s3-security-lab/
│
├── architecture/
│   ├── terraform-s3-security-lab-diagram.drawio
│   └── terraform-s3-security-lab-diagram.png
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── outputs.tf
│
├── scripts/
│   └── audit_s3.sh
│
├── screenshots/
│
├── .gitignore
├── LICENSE
├── README.md
└── requirements.txt
```

---

## Prerequisites

Before starting, install the following tools:

- Terraform
- Docker
- LocalStack
- AWS CLI
- Python 3
- Checkov
- Trivy

---

## AWS CLI Configuration

Configure dummy credentials for LocalStack:

```bash
aws configure
```

Use:

```text
AWS Access Key ID: test
AWS Secret Access Key: test
Default region name: us-east-1
Default output format: json
```

---

## Start LocalStack

```bash
docker run --rm -it -p 4566:4566 localstack/localstack
```

Verify LocalStack:

```bash
curl http://localhost:4566/health
```

---

## Terraform Deployment

Initialize Terraform:

```bash
cd terraform
terraform init
```

Review the execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

---

## Verify S3 Bucket

List buckets:

```bash
aws --endpoint-url=http://localhost:4566 s3 ls
```

---

## Security Validation

### Checkov Scan

Run Checkov against Terraform files:

```bash
checkov -d terraform/
```

### Trivy Scan

Run Trivy configuration scan:

```bash
trivy config terraform/
```

### Bash Audit Script

Run the S3 audit script:

```bash
./scripts/audit_s3.sh roberto-devsecops-security-lab-001
```

---

## Security Controls Validated

- S3 bucket versioning
- Public access configuration
- Infrastructure configuration validation
- IaC security scanning
- Misconfiguration analysis

---

## Screenshots

Example scans and outputs can be stored in:

```text
screenshots/
```

Suggested screenshots:

- Terraform apply
- Checkov results
- Trivy results
- AWS CLI bucket verification

---

## Learning Objectives

This project helps practice:

- DevSecOps workflows
- Infrastructure as Code (IaC)
- Cloud Security fundamentals
- Terraform provisioning
- Security scanning automation
- AWS S3 security controls
- Local cloud emulation with LocalStack

---

## Future Improvements

- Add GitHub Actions CI/CD pipeline
- Enable S3 encryption validation
- Add IAM policy validation
- Add automated remediation examples
- Add SARIF reporting
- Integrate tfsec

---

## License

This project is licensed under the MIT License.
