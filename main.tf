terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "ovk" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  key_name = "new_key"

  tags = {
    Name = "chetu"
  }
}