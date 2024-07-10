output "vm_aws_ip" {
  description = "Ip publico da máquina na aws para acesso via ssh"
  value = aws_instance.vm.public_ip
}

output "vm_azure_ip" {
    description = "Ip publico da máquina na azure para acesso via ssh"
    value = azurerm_linux_virtual_machine.vm.public_ip_address
}