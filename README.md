# Terraform-AWS
This project aims to automate the provisioning of AWS infrastructure using Terraform. It consists of four modules: network, S3_bucket, EC2, and security_group.

- The network module creates a Virtual Private Cloud (VPC) along with public and private subnets.
- The S3_bucket module provisions an S3 bucket for storing files.
- The EC2 module deploys an EC2 instance.
- The security_group module manages security group rules for the EC2 instance.
# Modules
-------------
- network: Creates VPC, public subnet, and private subnet.
- S3_bucket: Creates an S3 bucket.
- EC2: Deploys an EC2 instance.
- security_group: Manages security group rules for the EC2 instance.
# Usage
--------------
To get started you need to creat account on AWS and install VScode and terraform then follow the steps:
- Clone the repository.
- Navigate to the terraform directory.
- Run terraform init to initialize the Terraform configuration.
- Run terraform apply to create the AWS infrastructure.
