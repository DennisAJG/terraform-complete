resource "aws_key_pair" "aws-key" {
  key_name   = "aws-key"
  public_key = file("~/.ssh/aws-key.pub")
}

resource "aws_instance" "ec2-aws-terraform" {
  ami                         = "ami-07d9b9ddc6cd8dd30"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.aws-key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.id_subnet
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}