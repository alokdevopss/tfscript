resource "aws_subnet" "my_private_subnet_tf" {
  vpc_id            = aws_vpc.my_vpc_tf.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-subnet-tf"
  }
}

resource "aws_subnet" "my_public_subnet_tf" {
  vpc_id            = aws_vpc.my_vpc_tf.id
  cidr_block        = "10.10.2.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "public-subnet-tf"
  }
}