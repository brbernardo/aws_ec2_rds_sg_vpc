output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.public_subnet.public_subnet_id
}


output "internet_gateway_id" {
  value = module.internet_gateway.gateway_id
}

output "route_table_id" {
  value = module.route_table.route_table_id
}
