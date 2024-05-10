module "vpcmod" {
  source  = "./modules/network"

  vpc_id             = var.vpc_id
  AZ                 = var.availability_zone
  vpc_cidr_block     = var.vpc_cidr_block
  private_cidr_block = var.private_cidr_block
  cidr_block_RT      = var.cidr_block_RT
  public_cidr_block  = var.public_cidr_block
}

module "S3_bucketmod" {
  source  = "./modules/S3"

  bucket  = var.bucket

}

module "security_group" {
  source = "./modules/security_group"  

  name                = var.name
  description         = var.description
  vpc_id              = var.vpc_id
  ingress_from_port   = var.ingress_from_port
  ingress_to_port     = var.ingress_to_port
  ingress_protocol    = var.ingress_protocol
  ingress_cidr_blocks = ingress_cidr_blocks
  egress_from_port    = var.egress_from_port
  egress_to_port      = var.egress_to_port
  egress_protocol     = var.egress_protocol  
  egress_cidr_blocks  = var.egress_cidr_blocks
}

module "EC2" {
  source              = "./modules/EC2"

  instance_type       = var.instance_type
  ami                 = var.ami
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  tags = {
    Name        = "ismgroup EC2 Instance"
    Environment = "Dev"
  }
}
