terraform {
  required_version = ">= 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }
  backend "s3" {
    bucket = "devops-bootcamp-backend-terraform"
    key    = "dev/terraform.tfstate"
    region = "ap-southeast-1"
    # profile = "mms"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  # profile = "mms"

  default_tags {
    tags = {
      project     = "prod"
      environment = "prod"
      managed_by  = "terraform"
      owner       = "wayne"
    }
  }
}