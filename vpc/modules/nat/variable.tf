variable "allocation_id" {
  description = "The allocation ID of the Elastic IP address to associate with the NAT gateway."
  type        = string
}

variable "public_subnet_id" {
  type = string
}
