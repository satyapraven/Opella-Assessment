# AWS Infrastructure with VPC and Jumpbox using Terraform

This Terraform project provisions a basic AWS infrastructure, including:
- A VPC with public and private subnets
- An EC2 instance (Jumpbox) in the public subnet for access
- Modular structure for scalability and reuse

## 📁 Project Structure

│   main.tf
│   variables.tf
│   outputs.tf
│   prod.tfvars
│   dev.tfvars
│
└───modules
    └───vpc
        │   main.tf
        │   variables.tf
        │   outputs.tf
    └───ec2
        │   main.tf
        │   variables.tf
        │   outputs.tf

## 🔧 Prerequisites

- Terraform CLI installed (v1.0+ recommended)
- AWS CLI configured with appropriate credentials
- An existing EC2 key pair in your target AWS region (for `key_name`)

## 📦 Modules

### VPC Module
Creates:
- VPC
- Public and Private Subnets (across specified AZs)

### EC2 Module
Creates:
- A single EC2 instance in a public subnet, intended as a Jumpbox/Bastion host

## 🚀 How to Use

### 1. Initialize the Terraform project

terraform init

### 2. Plan with a specific environment (e.g., Dev)

terraform plan -var-file="dev.tfvars"

### 3. Apply the configuration

terraform apply -var-file="dev.tfvars"

### 4. Destroy the infrastructure

terraform destroy -var-file="dev.tfvars"

## 📝 Inputs

Defined in variables.tf:
1. environment - Deployment environment name (e.g., dev, prod)
2. aws_region - AWS region to deploy resources
3. vpc_cidr - CIDR block for the VPC
4. azs - List of availability zones
5. private_subnets - List of private subnet CIDRs
6. public_subnets - List of public subnet CIDRs
7. ami_id - AMI ID for EC2 instance
8. instance_type - Instance type (e.g., t2.micro)
9. key_name - Name of the key pair for SSH access

## 📤 Outputs
After applying, Terraform will output:

1. VPC ID
2. Private and Public Subnet IDs
3. Environment and AWS Region
4. Jumpbox Instance ID and Public IP

## 📌 Notes
I. Make sure the ami_id provided in dev.tfvars or prod.tfvars is valid for the selected aws_region.
II. Use separate state files or workspaces for managing multiple environments (e.g., dev vs prod).
