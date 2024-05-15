resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet_public
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-${var.environment}-terraform-public"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet_private
  map_public_ip_on_launch = "false"
  tags = {
    Name = "subnet-${var.environment}-terraform-private"
  }
}