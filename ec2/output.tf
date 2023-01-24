output "public_ip" {
  value = module.ec2.public_ip
}


output "key_name" {
  value = module.key_pair.key_name
}
