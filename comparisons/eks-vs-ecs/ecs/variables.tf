variable "ecs_subnet_a_cidr_block" {
  description = "CIDR block for the ECS subnet a"
  type        = string
  default     = "10.0.3.0/24"
}

variable "ecs_subnet_b_cidr_block" {
  description = "CIDR block for the ECS subnet b"
  type        = string
  default     = "10.0.4.0/24"
}
