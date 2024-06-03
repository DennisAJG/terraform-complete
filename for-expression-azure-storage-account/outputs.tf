output "storage_id" {
  description = "ID da storage account criado na Azure"
  value = [for sa in azurerm_storage_account.storage_account : sa.id ]
  
}

output "sa_primary_access_key" {
  description = "Primary Access Key da storage accounts criadas na Azure"
  value = {for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key}
  sensitive = true #protegendo o valor deste output
}
# Execute o comando no terminal: terraform output sa_primary_access_key.
# vai listar a chave e primary key  