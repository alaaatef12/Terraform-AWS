variable "vpc_id" {
  description = "The vpc_id "
}

variable "AZ" {
  description = "Availability Zone"
}

# VPC Resource #
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

# Private Subnet #
variable "private_cidr_block" {
  description = "The Private subnet cidr_block the Private Subnet"
}

# Route Table #
variable "cidr_block_RT" {
  description = "The CIDR block for the Public Subnet"
}

# Public Subnet #
variable "public_cidr_block" {
  description = "The CIDR block for the Public Subnet"
}

variable "bucket" {
  description = "The name of the S3 bucket"
}

variable "description" {
  description = "The description of the security group"
}

variable "name" {
  description = "The name of the security group"
}

variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "ingress_from_port" {
  description = "The start port for ingress rules"
}

variable "ingress_to_port" {
  description = "The end port for ingress rules"
}

variable "ingress_protocol" {
  description = "The protocol for ingress rules (e.g., tcp, udp, icmp)"
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks to allow ingress traffic from"
}

variable "egress_from_port" {
  description = "The start port for egress rules"
}

variable "egress_to_port" {
  description = "The end port for egress rules"
}

variable "egress_protocol" {
  description = "The protocol for egress rules (e.g., tcp, udp, icmp)"
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks to allow egress traffic to"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the EC2 instance"
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instance"
}

variable "tags" {
  description = "A map of tags to apply to the EC2 instance"
  default     = {}
}
