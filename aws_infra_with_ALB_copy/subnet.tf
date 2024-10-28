# resource "aws_subnet" "my_private_subnet_tf" {
#   vpc_id            = aws_vpc.my_vpc_tf.id
#   cidr_block        = "10.10.1.0/24"
#   availability_zone = "ap-south-1a"

#   tags = {
#     Name        = "private-subnet-tf"
#     Environment = "test"
#   }
# }

resource "aws_subnet" "my_public_subnet_tf_1" {
  vpc_id            = aws_vpc.my_vpc_tf1.id
  cidr_block        = "10.11.1.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name        = "public-subnet-tf-1"
    Environment = "test"
  }
}

resource "aws_subnet" "my_public_subnet_tf_2" {
  vpc_id            = aws_vpc.my_vpc_tf1.id
  cidr_block        = "10.11.3.0/24"
  availability_zone = "ap-south-1c"

  tags = {
    Name        = "public-subnet-tf-2"
    Environment = "test"
  }
}