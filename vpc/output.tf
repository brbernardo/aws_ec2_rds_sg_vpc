output "vpc_id" {
  value = module.vpc.vpc_id
}
output "gateway_id" {
  value = module.internet_gateway.gateway_id
}

output "elastic_ip" {
  value = module.elastic_ip.nat_eip
}

output "nat_gateway_id" {
  value = module.nat.aws_nat_gateway_id
}

output "public_subnet_id" {
  value = module.public_subnet.public_subnet_id
}

output "private_subnet_id" {
  value = module.private_subnet.private_subnet_id
}

output "public_route_table_id" {
  value = module.public_route_table.public_route_table_id
}

output "private_route_table_id" {
  value = module.private_route_table.private_route_table_id
}

output "public_internet_gateway_id" {
  value = module.public_internet_gateway.public_internet_gateway_id
}

output "private_nat_gateway" {
  value = module.private_nat_gateway.private_nat_gateway_id
}

output "public_route_table_association_id" {
  value = module.public_route_table_association.public_route_table_association_id
}

output "private_route_table_association_id" {
  value = module.private_route_table_association.private_route_table_association_id
}