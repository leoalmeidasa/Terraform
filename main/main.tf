terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance

  tags = {
    Name = var.instance_name
  }
  connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./leonardo.pem")
     host = self.public_ip
   }
}
