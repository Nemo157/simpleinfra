// Configuration for Terraform itself.

terraform {
  required_version = "~> 1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.32"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "DocsRsStaging"
}

provider "aws" {
  region = "us-east-1"
  alias  = "legacy"
}
