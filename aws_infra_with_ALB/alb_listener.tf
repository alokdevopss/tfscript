# resource "aws_lb_listener" "my_alb_listner_tf" {
#   load_balancer_arn = aws_lb.my_alb_tf.arn
#   port              = 80
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.my_alb_tg_tf.arn
#   }
# }

resource "aws_lb_listener" "my_alb_listner_tf" {
  load_balancer_arn = aws_lb.my_alb_tf.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_alb_tg_tf.arn
  }

  tags = {
    Name        = "my_alb_listener_tf"
    Environment = "test"
  }
}
