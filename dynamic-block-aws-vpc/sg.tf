resource "aws_security_group" "sg" {
  name        = "security-group-terraform-curso"
  description = "Permitir acesso na porta 22"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.ports

    content {
      description = ingress.value.description
      from_port = ingress.key
      to_port = ingress.key
      protocol = "tcp"
      cidr_blocks = ingress.value["cidr_blcoks"]
    }
  }


  egress {
    description = "ALL"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-group-terraform-curso"
  }
}