module "key_pair" {
  source = "./modules/key_pair"
}

module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = var.subnet_id
  security_group_id = var.security_group_id
  ami_id            = data.aws_ami.amzn.id
  instance_type     = data.aws_ec2_instance_type_offering.example.instance_type
  key_name          = data.aws_key_pair.example_key.key_name
  user_data         = var.user_data
}