resource "aws_vpc" "my_vpc_tf" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-tf"
  }
}