output "storage_account_id" {
  description = "ID da storage account criado na Azure"
  value = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Primary Access Key da storage account criada na Azure"
  value = azurerm_storage_account.storage_account.primary_access_key
  sensitive = true #protegendo o valor deste output
}

#falta realizar o deploy do código na Aula 28 