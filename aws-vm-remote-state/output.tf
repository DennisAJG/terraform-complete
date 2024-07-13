output "vm_ip_public" {
  description = "IP publico da máquina"
  value       = aws_instance.ec2_aws_terraform.public_ip
}