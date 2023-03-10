variable "vpc_id" {
  type = string
}

variable "ingress_rules" {
  type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
  }))
}

variable "egress_rules" {
  type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
  }))
}
