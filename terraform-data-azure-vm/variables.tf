variable "location" {
  description = "Região onde os recursos serão criados na Azure"
  type = string
  default = "West Europe"
}


variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de daddos da Storage Account"
  type        = string
  default     = "LRS"
}

variable "infra_version" {
  description = "Versão da infraestrutura"
  type = number
  default = 2
}