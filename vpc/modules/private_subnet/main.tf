resource "aws_subnet" "privete" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.privatesCIDRblock
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "Private subnet"
  }
}

