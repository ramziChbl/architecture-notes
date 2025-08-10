terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.8.0"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = local.common_tags
  }
}
