output "vm_1_ip_public" {
  description = "IP publico da máquina"
  value       = aws_instance.vm_1.public_ip
}

output "vm_2_ip_public" {
  description = "Ip publico da máquina 1"
  value = aws_instance.vm_2.public_ip
}