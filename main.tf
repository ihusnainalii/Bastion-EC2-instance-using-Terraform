terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Call VPC module
module "vpc" {
  source = "./modules/vpc"

  security_group_ingress_cidr_block = var.security_group_ingress_cidr_block
}

# Call VPC module
module "ec2" {
  source = "./modules/ec2"

  key_name           = var.key_name
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.vpc.security_group_id]
}