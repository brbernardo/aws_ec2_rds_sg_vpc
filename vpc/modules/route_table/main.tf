resource "aws_route_table" "Public_RT" {
  vpc_id = var.vpc_id
  tags = {
    Name = "Public Route"
  }
}

output "route_table_id" {
  value = aws_route_table.Public_RT.id
}
