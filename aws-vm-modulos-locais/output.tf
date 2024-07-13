output "vm_ip" {
  description = "IP da vm criada na AWS"
  value = aws_instance.vm.public_ip
}