variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "eks_subnet_a_cidr_block" {
  description = "CIDR block for the EKS subnet a"
  type        = string
  default     = "10.0.1.0/24"
}

variable "eks_subnet_b_cidr_block" {
  description = "CIDR block for the EKS subnet b"
  type        = string
  default     = "10.0.2.0/24"
}

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
