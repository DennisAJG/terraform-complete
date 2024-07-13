resource "aws_key_pair" "aws-key" {
  key_name   = "aws-key"
  public_key = file("~/.ssh/aws-key.pub")
}

resource "aws_instance" "vm_1" {
  ami                         = "ami-07d9b9ddc6cd8dd30"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.aws-key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.id_subnet
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform-1"
  }
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [ aws_instance.vm_1 ]

  create_duration = "30s"
  destroy_duration = "30s"
}

resource "aws_instance" "vm_2" {
  depends_on = [ time_sleep.wait_30_seconds ]
  ami                         = "ami-07d9b9ddc6cd8dd30"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.aws-key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.id_subnet
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform-2"
  }
}