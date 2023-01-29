resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.publicsCIDRblock
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "Public subnet"
  }
}

