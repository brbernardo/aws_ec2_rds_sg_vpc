resource "aws_network_acl" "private" {
  vpc_id            = var.vpc_id
  subnet_ids        = var.subnet_ids
}

resource "aws_network_acl_rule" "private_inbound" {
  network_acl_id = aws_network_acl.private.id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = var.privatesCIDRblock
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "private_outbound" {
  network_acl_id = aws_network_acl.private.id
  rule_number    = 200
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = var.privatesCIDRblock
  from_port      = 0
  to_port        = 0
}
