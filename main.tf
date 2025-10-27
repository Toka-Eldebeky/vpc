# A VPC with a CIDR block of 10.0.0.0/16.
# One public subnet with a CIDR block of 10.0.0.0/24.
# One private subnet with a CIDR block of 10.0.1.0/24.
# One Internet Gateway.
# One public route table with a route to the Internet Gateway, and the correct association between the public subnet and the public route table.
provider "aws" {
  region  = "eu-west-1"
  profile = "toka"
}
# create a vpc 
resource "aws_vpc" "demo_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Terraform VPC"
  }
}

# create two subnets 
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.demo_vpc.id
  cidr_block = "10.0.0.0/24"
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.demo_vpc.id
  cidr_block = "10.0.1.0/24"
}

# create an Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demo_vpc.id
  tags = {
    Name = "Terraform IGW"
  }
}

# create a public route table
resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.demo_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

# associate the public subnet with the public route table
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rtb.id
}
