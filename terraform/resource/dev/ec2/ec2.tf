provider "aws" {
  region = "var.aws_region"
}
## Terraform block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "ec2" {
  source ="../../../module/ec2"
  aws_region    = "us-east-1"
key_name      = "s7"
subnet_id     = "subnet-062b4d4730c5cc51a"
instance_type = "t2.micro"
tags = {
  Name    = "offer-letter"
  Project = "alpha"
  Owner   = "edemos"
  Env     = "Dev"
}
}













