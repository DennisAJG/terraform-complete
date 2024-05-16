variable "location" {
  description = "Região onde os recursos serão criados na Azure"
  type = string
  default = "West Europe"
}


variable "environment" {
  description = "Ambiente na Azure que será provisionado os recursos"
  type = string
  default = "desenvolvimento"
}