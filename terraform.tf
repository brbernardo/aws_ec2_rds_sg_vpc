terraform {
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