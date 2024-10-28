resource "aws_vpc" "my_vpc_tf1" {
  cidr_block       = "10.11.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name        = "vpc-tf"
    Environment = "test"
  }
}
