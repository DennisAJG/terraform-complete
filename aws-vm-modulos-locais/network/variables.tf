variable "cidr_vpc" {
  description = "Cidr para a VPC criada na AWS"
  type = string
}

variable "cidr_subnet_public" {
  description = "Cidr para a SUBNET criada na AWS"
  type = string
}

variable "cidr_subnet_private" {
  description = "Cidr para a SUBNET privada criada na AWS"
  type = string
}

variable "environment" {
  description = "Ambiente a que pertencem ao projeto na AWS"
  type = string
}