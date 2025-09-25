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
