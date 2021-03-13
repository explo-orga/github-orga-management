terraform {
  required_version = "~> 0.14.8"

  backend "s3" {
    bucket         = "dcu-orga-state"
    key            = "organization/github-terraform-example/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.5.1"
    }
  }
}

provider "github" {
  organization = "explo-orga"
}

provider "aws" {}