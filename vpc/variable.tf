variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}
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

variable "mapPublicIP" {
  type        = bool
  description = "Whether instances in the subnet should be assigned a public IP address"
  default     = true
}

variable "availabilityZone" {
  type    = string
  default = "us-west-2a"
}


