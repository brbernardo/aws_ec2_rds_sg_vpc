/*==== The VPC ======*/
module "vpc" {
  source          = "./modules/vpc"
  vpcCIDRblock    = var.vpcCIDRblock
  dnsSupport      = var.dnsSupport
  dnsHostNames    = var.dnsHostNames
  instanceTenancy = var.instanceTenancy
}

/*==== public_subnets ======*/

/* Internet gateway for the public public_subnet */
module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

/* Elastic IP for NAT */
module "elastic_ip" {
  source     = "./modules/elastic_ip"
  depends_on = [module.internet_gateway]
}

/* NAT */
module "nat" {
  source           = "./modules/nat"
  depends_on       = [module.elastic_ip, module.internet_gateway]
  public_subnet_id = module.public_subnet.public_subnet_id
  allocation_id    = module.elastic_ip.nat_eip
}

/* Public public_subnet */
module "public_subnet" {
  source           = "./modules/public_subnet"
  vpc_id           = module.vpc.vpc_id
  vpcCIDRblock     = var.vpcCIDRblock
  dnsSupport       = var.dnsSupport
  dnsHostNames     = var.dnsHostNames
  publicsCIDRblock = var.publicsCIDRblock
  mapPublicIP      = var.mapPublicIP_public_subnet
  availabilityZone = var.availabilityZone
  instanceTenancy  = var.instanceTenancy
}

/* Private subnet */
module "private_subnet" {
  source            = "./modules/private_subnet"
  vpc_id            = module.vpc.vpc_id
  vpcCIDRblock      = var.vpcCIDRblock
  dnsSupport        = var.dnsSupport
  dnsHostNames      = var.dnsHostNames
  privatesCIDRblock = var.privatesCIDRblock
  mapPublicIP       = var.mapPublicIP_private_subnet
  availabilityZone  = var.availabilityZone
  instanceTenancy   = var.instanceTenancy
}

/* Routing table for public subnet */
module "public_route_table" {
  source = "./modules/public_route_table"
  vpc_id = module.vpc.vpc_id
}

/* Routing table for private subnet */
module "private_route_table" {
  source = "./modules/private_route_table"
  vpc_id = module.vpc.vpc_id
}

/*==== Routing table for public internet gateway ======*/
module "public_internet_gateway" {
  source                 = "./modules/public_internet_gateway"
  route_table_id         = module.public_route_table.public_route_table_id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = module.internet_gateway.gateway_id
}

/*==== Routing table for private internet gateway ======*/
module "private_nat_gateway" {
  source                 = "./modules/private_nat_gateway"
  route_table_id         = module.private_route_table.private_route_table_id
  destination_cidr_block = var.destination_cidr_block
  nat_gateway_id         = module.nat.aws_nat_gateway_id
}

/* Route table public associations */
module "public_route_table_association" {
  source         = "./modules/public_route_table_association"
  subnet_id      = module.public_subnet.public_subnet_id
  route_table_id = module.public_route_table.public_route_table_id
}

/* Route table private associations */
module "private_route_table_association" {
  source         = "./modules/private_route_table_association"
  subnet_id      = module.private_subnet.private_subnet_id
  route_table_id = module.private_route_table.private_route_table_id
}