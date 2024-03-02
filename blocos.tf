terraform {
  
}

provider "aws" {
  
}

resource "aws_alb" "name" {
  
}

data "aws_ami" "name" {
  #serve para pegar alguma informação de fora do terraform, para trazer pro nosso código terraform
}

module "name_module" {
  #aciona para provisionar algum recurso dentro da cloud 
  #podemos usar modulos-locais e modulos-remotos
}

variable "name_variable" {
  #usado para atribuir variaveis no terraform
}


output "name_output" {
  #server para exibir as informações que seram provisionadas pelo terraform 

}

locals {
  # serve para definir funções que são usados com muita frequencia.
  # usado para não ficar escrevendo muitos códigos com freuencia, pode ser declarado no locals para depois ser usados para reutilizarmos. 
}