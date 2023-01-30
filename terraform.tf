terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.00"
    }
  }
  /*
  backend "s3" {
    bucket  = "my-tf-state-bucket"
    region  = "us-west-1"
    key     = "path/to/my/tfstate"
  }
  */
}

provider "aws" {
  
  region = "us-east-1"

  default_tags {
    tags = {
      Environment     = "Test"
      Service         = "Example"
      Owner           = "HashiCorpn"
    }
  }
}