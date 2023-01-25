module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = var.subnet_id
  security_group_id = var.security_group_id
  ami_id            = data.aws_ami.amzn.id
  instance_type     = data.aws_ec2_instance_type_offering.this.instance_type
  key_name          = var.key_name
  user_data         = var.user_data
}