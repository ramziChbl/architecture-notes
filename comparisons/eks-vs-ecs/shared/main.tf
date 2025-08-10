resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "shared-vpc"
  }
}

# EKS Subnets
resource "aws_subnet" "eks_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.eks_subnet_a_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name                                = "eks-subnet-a"
    "kubernetes.io/cluster/eks-cluster" = "shared"
    "kubernetes.io/role/elb"            = "1"
  }
}

resource "aws_subnet" "eks_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.eks_subnet_b_cidr_block
  availability_zone = "us-east-1b"

  tags = {
    Name                                = "eks-subnet-b"
    "kubernetes.io/cluster/eks-cluster" = "shared"
    "kubernetes.io/role/elb"            = "1"
  }
}

# ECS Subnets
resource "aws_subnet" "ecs_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.ecs_subnet_a_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = "ecs-subnet-a"
  }
}

resource "aws_subnet" "ecs_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.ecs_subnet_b_cidr_block
  availability_zone = "us-east-1b"

  tags = {
    Name = "ecs-subnet-b"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "shared-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "shared-public-rt"
  }
}

resource "aws_route_table_association" "eks_a" {
  subnet_id      = aws_subnet.eks_a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "eks_b" {
  subnet_id      = aws_subnet.eks_b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "ecs_a" {
  subnet_id      = aws_subnet.ecs_a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "ecs_b" {
  subnet_id      = aws_subnet.ecs_b.id
  route_table_id = aws_route_table.public.id
}