module "create_vpc" {
  source = "./vpc"
}

module "create_security_group" {
  source = "./security_group"
  vpc_id = module.vpc.vpc_id
}

module "create_ec2" {
  source            = "./ec2"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
}

module "create_rds" {
  source            = "./rds"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
}
