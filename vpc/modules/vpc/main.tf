resource "aws_vpc" "VPC" {
    cidr_block           = var.vpcCIDRblock
    instance_tenancy     = var.instanceTenancy 
    enable_dns_support   = var.dnsSupport 
    enable_dns_hostnames = var.dnsHostNames
    tags = {
        Name = "VPC"
    }
} 