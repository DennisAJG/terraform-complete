output "sas_token" {
  description = "SAS Token para o Container de imagens"
  value = data.azurerm_storage_account_blob_container_sas.sas_token.sas
  sensitive = true  #consegue visualizar o sas_token usando o comando terraform output sas_token
}

output "container_url" {
  description = "URL do Container de Imagens"
  value = azurerm_storage_container.container.id
}