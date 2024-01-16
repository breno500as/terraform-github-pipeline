terraform {
  required_version = "1.6.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.32.0"
    }
  }


  backend "s3" {
    bucket = "breno500as-terraform-remote-state"
    key    = "aws-vpc-github-pipeline/terraform.tfstate"
    region = "us-east-1"
  }


}

provider "aws" {

  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "breno500as"
      managed-by = "terraform"

    }
  }
}