resource "aws_lb" "my_alb_tf" {
  name               = "my-alb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.my_sg_jump_server_tf.id]
  subnets            = [aws_subnet.my_public_subnet_tf.id]

  enable_deletion_protection = true

  tags = {
    Name        = "my_alb_tf"
    Environment = "test"
  }
}