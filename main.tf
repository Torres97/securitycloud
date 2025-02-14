resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia-cidr
  tags = {
    Name = "vpc-virginia"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio-cidr
  tags = {
    Name = "vpc-ohio"
  }
  provider = aws.ohio
}

resource "aws_subnet" "public_subnet_virginia" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.cidrs[0]
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet_ohio" {
  vpc_id     = aws_vpc.vpc_ohio.id
  cidr_block = var.cidrs[1]
  provider   = aws.ohio
}
