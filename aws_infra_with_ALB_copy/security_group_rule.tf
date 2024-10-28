# Get your local IP address dynamically using an external data source
data "http" "my_ip" {
  url = "https://checkip.amazonaws.com/"
}

# # Ingress rule for Web Server Security Group
# resource "aws_security_group_rule" "ingress_rule_web_server" {
#   type      = "ingress"
#   from_port = 22
#   to_port   = 22
#   protocol  = "tcp"
#   #   cidr_blocks       = [aws_instance.my_jump_server_tf.private_ip]
#   cidr_blocks       = [format("%s/32", aws_instance.my_jump_server_tf.private_ip)]
#   security_group_id = aws_security_group.my_sg_web_server_tf.id
# }

# # Egress rule for Web Server Security Group
# resource "aws_security_group_rule" "egress_rule_web_server" {
#   type              = "egress"
#   from_port         = 0
#   to_port           = 0
#   protocol          = "-1" # Allows all outbound traffic
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.my_sg_web_server_tf.id
# }

# Ingress rule for Jump Server Security Group
resource "aws_security_group_rule" "ingress_rule_jump_server" {
  type      = "ingress"
  from_port = 22
  to_port   = 22
  protocol  = "tcp"
  #   cidr_blocks       = [format("%s/32", var.my_local_ip)]
  cidr_blocks = [
    # "${data.http.my_ip.response_body}/32)",           # Your local IP address
    "${trimspace(data.http.my_ip.response_body)}/32", # Trimmed local IP address
    "13.233.177.0/29"                                 # EC2 Instance Connect IP range for ap-south-1
  ]
  security_group_id = aws_security_group.my_sg_jump_server_tf.id
}

# Egress rule for Jump Server Security Group
resource "aws_security_group_rule" "egress_rule_jump_server" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1" # Allows all outbound traffic
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg_jump_server_tf.id
}
