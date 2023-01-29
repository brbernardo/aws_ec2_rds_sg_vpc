resource "aws_nat_gateway" "nat" {
  allocation_id = var.allocation_id
  subnet_id     = var.public_subnet_id
  tags = {
    Name = "nat"
  }
}