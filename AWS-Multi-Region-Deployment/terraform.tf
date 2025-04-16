terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "databucketsourceside"
    key            = "demo/awsinfra.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform_state"
    encrypt        = true
  }
}
