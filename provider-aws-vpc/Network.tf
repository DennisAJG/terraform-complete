resource "aws_subnet" "europa" {
  vpc_id                  = module.vpc.vpc_id_default
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "vpc-curso-terraform-public-provider"
  }
}

resource "aws_subnet" "eua" {
  provider = aws.eua
  vpc_id                  = module.vpc.vpc_id_provider_1
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "vpc-curso-terraform-public-provider"
  }
}


resource "aws_subnet" "australia" {
  provider = aws.australia
  vpc_id                  = module.vpc.vpc_id_provider_2
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "vpc-curso-terraform-public-provider"
  }
}
