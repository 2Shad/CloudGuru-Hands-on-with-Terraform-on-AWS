terraform {
    required_version = ">= 1.5.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
}

# terraform {
#   backend "s3" {
#     bucket = "hands-on-terraform-bucket-1232"
#     key    = "hands-on-terraform-bucket-1232/backend/backend.tf"
#     region = "us-east-1"
#     encrypt = true
#   }
# }


resource "aws_instance" "example" {
  ami           = "ami-05576a079321f21f8" # Amazon Linux 2023 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "GuruInstance"
  }
}

