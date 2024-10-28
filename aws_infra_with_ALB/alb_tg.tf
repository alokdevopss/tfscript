resource "aws_lb_target_group" "my_alb_tg_tf" {
  name        = "my-alb-tg-tf"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.my_vpc_tf.id
  target_type = aws_instance.my_jump_server_tf.id

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name        = "my_alb_tg_tf"
    Environment = "test"
  }
}
