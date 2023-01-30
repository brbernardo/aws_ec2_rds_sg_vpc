variable "vpcCIDRblock" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "dnsSupport" {
  type        = bool
  description = "Whether to enable or disable DNS support"
  default     = true
}

variable "dnsHostNames" {
  type        = bool
  description = "Whether to enable or disable DNS hostnames"
  default     = true
}

variable "instanceTenancy" {
  type        = string
  description = "The tenancy of instances launched in the VPC"
  default     = "default"
}

variable "publicsCIDRblock" {
  type        = string
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "privatesCIDRblock" {
  type        = string
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "destination_cidr_block" {
  type        = string
  description = "The CIDR block for the private subnet"
  default     = "0.0.0.0/0"
}

variable "mapPublicIP_public_subnet" {
  type        = bool
  description = "Whether instances in the subnet should be assigned a public IP address"
  default     = true
}
variable "mapPublicIP_private_subnet" {
  type        = bool
  description = "Whether instances in the subnet should be assigned a public IP address"
  default     = false
}

variable "availabilityZone" {
  type    = string
  default = "us-east-1a"
}


