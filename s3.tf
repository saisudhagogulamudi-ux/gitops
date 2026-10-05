terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# The desired infrastructure state:
resource "aws_s3_bucket" "demo_bucket" {
  # S3 bucket names must be globally unique; replace "demo" with your name/random number
  bucket = "gitops-saisudha-bucket-2026"

  tags = {
    Environment = "Dev"
    ManagedBy   = "GitOps"
  }
}
