resource "aws_lb_target_group_attachment" "my_alb_tg_attachment_tf" {
  target_group_arn = aws_lb_target_group.my_alb_tg_tf.arn
  target_id        = aws_instance.my_jump_server_tf.id
  port             = 80
}
