output "vpc_id" {
  value = aws_vpc.main.id
}

output "eks_subnet_ids" {
  value = [
    aws_subnet.eks_a.id,
    aws_subnet.eks_b.id
  ]
}

output "ecs_subnet_ids" {
  value = [
    aws_subnet.ecs_a.id,
    aws_subnet.ecs_b.id
  ]
}