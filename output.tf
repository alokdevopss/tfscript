output "ec2_name" {
  value = aws_instance.web.id
}

output "ec2_region" {
  value = aws_instance.web.region
}
