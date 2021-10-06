# Terraform Block
terraform {
  required_version = "~> 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = "eu-west-1"
  profile = "default"
}

# Provider-2 for us-west-1
provider "aws" {
  region = "eu-west-2"
  profile = "default"
  alias = "aws-eu-west-2"
}


