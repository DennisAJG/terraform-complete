resource "aws_key_pair" "aws-key" {
  key_name   = "aws-key"
  public_key = file("~/.ssh/aws-key.pub")
}

resource "aws_instance" "ec2_aws_terraform" {
  ami                         = "ami-07d9b9ddc6cd8dd30"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.aws-key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.id_subnet
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/aws-key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.id_subnet} >> /tmp/network_info.txt",
      "echo security_group_id? ${data.terraform_remote_state.vpc.outputs.security_group_id} >> /tmp/network_info.txt"
    ]
  }

  provisioner "file" {
    source      = "./test.txt"
    destination = "/tmp/exemplo.txt"
  }

  provisioner "file" {
    content     = "ami used: ${self.ami}"
    destination = "/tmp/ami.txt"
  }

  tags = {
    Name = "vm-terraform"
  }

}

