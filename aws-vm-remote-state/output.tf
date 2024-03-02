output "vm_ip_public" {
  description = "IP publico da máquina"
  value       = aws_instance.ec2-aws-terraform.public_ip
}