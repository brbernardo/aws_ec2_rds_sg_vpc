resource "aws_security_group" "security_group" {
  vpc_id      = var.vpc_id
  name        = "example-sg"
  description = "Default security group to allow inbound/outbound from the VPC"

  ingress {
    from_port   = var.ingress_rules[0].from_port
    to_port     = var.ingress_rules[0].to_port
    protocol    = var.ingress_rules[0].protocol
    cidr_blocks = var.ingress_rules[0].cidr_blocks
  }

  egress {
    from_port   = var.egress_rules[0].from_port
    to_port     = var.egress_rules[0].to_port
    protocol    = var.egress_rules[0].protocol
    cidr_blocks = var.egress_rules[0].cidr_blocks
  }
}