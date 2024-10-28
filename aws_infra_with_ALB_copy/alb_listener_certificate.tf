# resource "aws_acm_certificate" "my_alb_certificate_tf" {
#   private_key      = file("/mnt/d/imegh/assignment/task/script/terraform/privkey.pem")
#   certificate_body = file("/mnt/d/imegh/assignment/task/script/terraform/cert.pem")
#   #   certificate_chain = file("path/to/fullchain.pem")
# }

resource "aws_lb_listener" "my_alb_listener_tf" {
  load_balancer_arn = aws_lb.my_alb_tf.arn
  port              = "80"
  protocol          = "HTTP"
  # ssl_policy        = "ELBSecurityPolicy-2016-08"
  # certificate_arn   = aws_acm_certificate.my_alb_certificate_tf.arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_alb_tg_tf.arn
  }

  tags = {
    Name        = "my_alb_listener_tf"
    Environment = "test"
  }
}
