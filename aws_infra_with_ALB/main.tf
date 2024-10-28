resource "aws_instance" "my_jump_server_tf" {
  ami                         = "ami-09b0a86a2c84101e1" # us-west-2
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.my_public_subnet_tf.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.my_sg_jump_server_tf.id]
  key_name                    = aws_key_pair.my_key_pair_tf.key_name

  tags = {
    Name        = "my_jump_server_tf"
    Environment = "test"
  }
  depends_on = [aws_security_group.my_sg_jump_server_tf] # Ensures the security group is created first
}

resource "aws_instance" "my_web_server_tf" {
  ami                    = "ami-09b0a86a2c84101e1" # us-west-2
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.my_private_subnet_tf.id
  vpc_security_group_ids = [aws_security_group.my_sg_web_server_tf.id]
  key_name               = aws_key_pair.my_key_pair_tf.key_name
  security_groups        = [aws_security_group.my_sg_web_server_tf.id]

  tags = {
    Name        = "my_web_server_tf"
    Environment = "test"
  }
  depends_on = [aws_security_group.my_sg_web_server_tf] # Ensures the security group is created first
}