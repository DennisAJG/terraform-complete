resource "aws_subnet" "subnet" {
  count = terraform.workspace == "prod" ? 3 : 1
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.${count.index}.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "vpc-${terraform.workspace}-${count.index}"
  }
}
