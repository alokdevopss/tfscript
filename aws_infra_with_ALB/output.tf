output "jump_server_instance_id" {
  description = "ID of my jump server"
  value       = aws_instance.my_jump_server_tf.id
}

output "jump_server_public_ip" {
  description = "Public IP address of my jump server"
  value       = aws_instance.my_jump_server_tf.public_ip
}

output "jump_server_private_ip" {
  description = "Private IP address of my jump server"
  value       = aws_instance.my_jump_server_tf.private_ip
}

output "web_server_instance_id" {
  description = "ID of my web server"
  value       = aws_instance.my_web_server_tf.id
}

output "web_server_public_ip" {
  description = "Public IP address of my web server"
  value       = aws_instance.my_web_server_tf.public_ip
}

output "web_server_private_ip" {
  description = "Private IP address of my web server"
  value       = aws_instance.my_web_server_tf.private_ip
}

output "private_subnet_id" {
  description = "ID address of private subnet"
  value       = aws_subnet.my_private_subnet_tf.id
}

output "public_subnet_id" {
  description = "ID address of public subnet"
  value       = aws_subnet.my_public_subnet_tf.id
}

output "internet_gateway" {
  description = "ID address of internet gateway"
  value       = aws_subnet.my_private_subnet_tf.id
}

output "vpc_id" {
  description = "ID adderess of VPC"
  value       = aws_vpc.my_vpc_tf.id
}

output "jump_server_security_group" {
  description = "ID address of my jump server sg"
  value       = aws_security_group.my_sg_jump_server_tf.id
}

output "web_server_security_group" {
  description = "ID address of my web server sg"
  value       = aws_security_group.my_sg_web_server_tf.id
}
