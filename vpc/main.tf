module "vpc" {
  source          = "./modules/vpc"
  vpcCIDRblock    = var.vpcCIDRblock
  dnsSupport      = var.dnsSupport
  dnsHostNames    = var.dnsHostNames
  instanceTenancy = var.instanceTenancy
}

module "public_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  vpcCIDRblock      = var.vpcCIDRblock
  dnsSupport        = var.dnsSupport
  dnsHostNames      = var.dnsHostNames
  publicsCIDRblock  = var.publicsCIDRblock
  privatesCIDRblock = var.privatesCIDRblock
  mapPublicIP       = var.mapPublicIP
  availabilityZone  = var.availabilityZone
  instanceTenancy   = var.instanceTenancy
}

module "public_NACL" {
  source           = "./modules/network_acl_public"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = [module.public_subnet.public_subnet_id]
  publicsCIDRblock = var.publicsCIDRblock
}

module "private_NACL" {
  source            = "./modules/network_acl_private"
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = [module.public_subnet.private_subnet_id]
  privatesCIDRblock = var.privatesCIDRblock
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
}

module "route" {
  source                 = "./modules/route"
  route_table_id         = module.route_table.route_table_id
  destination_cidr_block = var.publicsCIDRblock
  gateway_id             = module.internet_gateway.gateway_id
}

module "route_table_association" {
  source         = "./modules/route_table_association"
  subnet_id      = module.public_subnet.public_subnet_id
  route_table_id = module.route_table.route_table_id
}