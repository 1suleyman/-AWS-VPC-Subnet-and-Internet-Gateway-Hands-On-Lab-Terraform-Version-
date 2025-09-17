# region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-2"
}

# VPC CIDR block
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

# VPC Name
variable "vpc_name" {
  default = "Terraform VPC"
}
# Subnet CIDR block
variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}
# Subnet Name
variable "subnet_name" {
  default = "Terraform Public Subnet 1"
}
# Internet Gateway Name
variable "igw_name" {
  default = "Terraform IG"
}
