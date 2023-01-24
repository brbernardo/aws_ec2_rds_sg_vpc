resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = "Internet gateway"
  }
}

output "gateway_id" {
  value = aws_internet_gateway.IGW.id
}
