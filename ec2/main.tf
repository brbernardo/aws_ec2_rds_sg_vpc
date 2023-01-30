module "ec2" {
  source                 = "./modules/bastion"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  ami_id                 = data.aws_ami.amzn.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = var.user_data
}