variable "cidr_private_subnet" {
  description = "Valor da SUBNET privada criada na AWS"
  type = string
  default = "10.0.2.0/24"
}

variable "environment" {
  description = "Ambiente do projeto da EC2"
  type = string
  default = "desenvolvimento"
}