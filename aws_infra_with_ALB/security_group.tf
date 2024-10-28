resource "aws_security_group" "my_sg_jump_server_tf" {
  name   = "my_sg_jump_server_tf"
  vpc_id = aws_vpc.my_vpc_tf.id # Ensure this matches your VPC

  tags = {
    Name        = "my_sg_jump_server_tf"
    Environment = "test"
  }
}

resource "aws_security_group" "my_sg_web_server_tf" {
  name   = "my_sg_web_server_tf"
  vpc_id = aws_vpc.my_vpc_tf.id # Ensure this matches your VPC

  tags = {
    Name        = "my_sg_web_server_tf"
    Environment = "test"
  }
}