output "eks_subnet_ids" {
  value = [
    aws_subnet.eks_a.id,
    aws_subnet.eks_b.id
  ]
}
