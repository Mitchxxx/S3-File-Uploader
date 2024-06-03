terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">~5.0"
    }
  }

  backend "remote" {
    organization = "Adioma_Consulting_Limited"

    workspaces {
      name = "s3-uploader"
    }
  }
  required_version = ">~1.8.4"
}

provider "aws" {
  region = var.region
}