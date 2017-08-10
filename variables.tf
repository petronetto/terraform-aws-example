variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Amazon Linux
variable "aws_amis" {
  default = {
    us-east-1 = "ami-a4c7edb2"
  }
}
