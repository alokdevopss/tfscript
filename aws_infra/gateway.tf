resource "aws_internet_gateway" "my_internet_gateway-tf" {
  vpc_id = aws_vpc.my_vpc_tf.id

  tags = {
    Name = "my_internet_gateway-tf"
  }
}

# resource "aws_eip" "my_eip_tf" {
#   vpc = true
# }
# resource "aws_nat_gateway" "my_nat_gateway_tf" {
#   allocation_id = aws_eip.my_eip_tf.id
#   subnet_id     = aws_subnet.my_private_subnet_tf.id

#   tags = {
#     Name = "my_nat_gateway_tf"
#   }
# }