output "subnet_id" {
  description = "ID da subnet criada na Azure"
  value       = azurerm_subnet.subnet-public.id
}

output "network_security_group_id" {
  description = "ID da Network Security Group criada na Azure"
  value       = azurerm_network_security_group.nsg.id
}

