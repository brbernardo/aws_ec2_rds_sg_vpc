resource "aws_network_acl" "public_NACL" {
  vpc_id              = var.vpc_id
  subnet_ids          = var.subnet_ids

  ingress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicsCIDRblock 
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicsCIDRblock
    from_port  = 0 
    to_port    = 0
  }

  tags = {
    Name = "Public NACL"
  }
}
