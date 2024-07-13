output "vm_ip" {
  description = "Ip da VM na Azure"
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}