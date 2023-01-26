module "vpc" {
  source = "./vpc"
}

module "security_group" {
  source = "./security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./ec2"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
}

module "rds" {
  source            = "./rds"
  subnet_id = tolist([module.vpc.public_subnet_id])
}
