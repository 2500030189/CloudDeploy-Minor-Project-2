
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "clouddeploy" {
  ami           = "ami-0c8e23f7d8f4b9c9b"
  instance_type = "t2.micro"

  tags = {
    Name = "CloudDeploy-Project2"
  }
}
