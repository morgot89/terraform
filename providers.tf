terraform {
  required_providers {
    aws = {
      version = "= 5.85.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
