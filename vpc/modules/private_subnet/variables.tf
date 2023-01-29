variable "vpcCIDRblock" {
  type = string
}

variable "dnsSupport" {
  type = bool
}

variable "dnsHostNames" {
  type = bool
}

variable "instanceTenancy" {
  type = string
}

variable "privatesCIDRblock" {
  type = string
}

variable "mapPublicIP" {
  type = bool
}

variable "availabilityZone" {
  type = string
}

variable "vpc_id" {
  type = string
}