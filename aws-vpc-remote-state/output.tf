output "id_subnet" {
  description = "ID da subnet criada na AWS"
  value       = aws_subnet.public_subnet_1.id
}

output "security_group_id" {
  description = "Id da security group na aws"
  value       = aws_security_group.sg.id
}