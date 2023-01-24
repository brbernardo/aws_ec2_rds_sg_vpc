data "aws_availability_zones" "all" {}

resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.publicsCIDRblock
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = data.aws_availability_zones.all.names[0]
  tags = {
    Name = "Public subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.privatesCIDRblock
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = data.aws_availability_zones.all.names[1]
  tags = {
    Name = "Private subnet"
  }
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}


