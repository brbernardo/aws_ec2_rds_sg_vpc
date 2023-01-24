module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = var.vpc_id
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
}