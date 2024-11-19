variable "ami"{
  type    = string
  default = "ami-012967cc5a8c9f891"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "TerraForm"
}
