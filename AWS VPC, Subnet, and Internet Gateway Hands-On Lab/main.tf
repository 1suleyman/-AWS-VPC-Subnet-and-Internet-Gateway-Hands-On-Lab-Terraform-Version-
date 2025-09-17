# Terraform core configuration (provider, resources)

# 1. Configure AWS Provider

provider "aws" {
  region = var.aws_region
}

# 2. Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block           = "${var.vpc_cidr_block}"
  tags = {
    Name = "${var.vpc_name}"
  }
}

# 3. Create a Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "${var.subnet_cidr_block}"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.subnet_name}"
  }
}
# 4. Create an Internet Gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "${var.igw_name}"
  }
}
