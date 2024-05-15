resource "aws_instance" "vm" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = aws_key_pair.key.key_name
  subnet_id = module.network.id_subnet
  vpc_security_group_ids = [ module.network.security_group_id ]
  associate_public_ip_address = true

  tags = {
    Name = "vm-${var.environment}-terraform"
  }
}