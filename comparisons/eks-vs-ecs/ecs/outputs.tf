output "ecs_subnet_ids" {
  value = [
    aws_subnet.ecs_a.id,
    aws_subnet.ecs_b.id
  ]
}
