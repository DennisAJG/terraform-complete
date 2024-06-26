resource "aws_vpc" "vpc" {
 cidr_block = "10.0.0.0/16"

 tags = {
    Name = "vpc-terraform"
 } 
}

resource "aws_subnet" "subnet" {

  count = 3

  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index}.0/24"  # começando com o 0 depois 1 e depois 2

  tags = {
    Name = "subnet-terraform-${count.index}"
  }
}

