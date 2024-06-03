output "subnet_id" {
  description = "Ids da subnets criadas na AWS"
  value = aws_subnet.subnet[*].id #formato antigo: value = aws_subnet.subnet.*.id 
}