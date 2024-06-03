resource "aws_instance" "vm" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = aws_key_pair.key.key_name
  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids = [ data.terraform_remote_state.vpc.outputs.security_groups_id ]
  associate_public_ip_address = true

  lifecycle {
    #prevent_destroy = true #Não deixa o recurso ser destruido
    replace_triggered_by = [ 
      aws_s3_bucket.bucket-terraform #só realiza o processo de criação quando um determinado recurso estiver atualizado 
     ]
  }

  tags = {
    Name = "vm-terraform"
  }
}