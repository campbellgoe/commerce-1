# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Main region where the resources should be created in
provider "aws" {
  region = "eu-west-1"
}

module "tf_next" {
  source = "milliHQ/next-js/aws"
}

output "cloudfront_domain_name" {
  value = module.tf_next.cloudfront_domain_name
}