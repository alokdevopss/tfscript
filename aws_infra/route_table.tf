resource "aws_route_table" "my_public_route_table_tf" {
  vpc_id = aws_vpc.my_vpc_tf.id

  tags = {
    Name = "my_public_route_table_tf"
  }
}

resource "aws_route_table_association" "my_public_route_table_asso_tf" {
  subnet_id      = aws_subnet.my_public_subnet_tf.id
  route_table_id = aws_route_table.my_public_route_table_tf.id
}

resource "aws_route" "my_public_route_tf" {
  route_table_id         = aws_route_table.my_public_route_table_tf.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_internet_gateway-tf.id
}

resource "aws_route_table" "my_private_route_table_tf" {
  vpc_id = aws_vpc.my_vpc_tf.id

  tags = {
    Name = "my_private_route_table_tf"
  }
}

resource "aws_route_table_association" "my_private_route_table_asso_tf" {
  subnet_id      = aws_subnet.my_private_subnet_tf.id
  route_table_id = aws_route_table.my_private_route_table_tf.id
}

resource "aws_route" "my_private_route_tf" {
  route_table_id         = aws_route_table.my_private_route_table_tf.id
  destination_cidr_block = "0.0.0.0/0"
  # nat_gateway_id         = aws_nat_gateway.my_nat_gateway_tf.id
  gateway_id             = aws_internet_gateway.my_internet_gateway-tf.id
}