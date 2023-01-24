## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_internet_gateway"></a> [internet\_gateway](#module\_internet\_gateway) | ./modules/internet_gateway | n/a |
| <a name="module_private_NACL"></a> [private\_NACL](#module\_private\_NACL) | ./modules/network_acl_private | n/a |
| <a name="module_public_NACL"></a> [public\_NACL](#module\_public\_NACL) | ./modules/network_acl_public | n/a |
| <a name="module_public_subnet"></a> [public\_subnet](#module\_public\_subnet) | ./modules/subnet | n/a |
| <a name="module_route"></a> [route](#module\_route) | ./modules/route | n/a |
| <a name="module_route_table"></a> [route\_table](#module\_route\_table) | ./modules/route_table | n/a |
| <a name="module_route_table_association"></a> [route\_table\_association](#module\_route\_table\_association) | ./modules/route_table_association | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availabilityZone"></a> [availabilityZone](#input\_availabilityZone) | n/a | `string` | `"us-west-2a"` | no |
| <a name="input_dnsHostNames"></a> [dnsHostNames](#input\_dnsHostNames) | Whether to enable or disable DNS hostnames | `bool` | `true` | no |
| <a name="input_dnsSupport"></a> [dnsSupport](#input\_dnsSupport) | Whether to enable or disable DNS support | `bool` | `true` | no |
| <a name="input_instanceTenancy"></a> [instanceTenancy](#input\_instanceTenancy) | The tenancy of instances launched in the VPC | `string` | `"default"` | no |
| <a name="input_mapPublicIP"></a> [mapPublicIP](#input\_mapPublicIP) | Whether instances in the subnet should be assigned a public IP address | `bool` | `true` | no |
| <a name="input_privatesCIDRblock"></a> [privatesCIDRblock](#input\_privatesCIDRblock) | The CIDR block for the private subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_publicsCIDRblock"></a> [publicsCIDRblock](#input\_publicsCIDRblock) | The CIDR block for the public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-1"` | no |
| <a name="input_vpcCIDRblock"></a> [vpcCIDRblock](#input\_vpcCIDRblock) | The CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | n/a |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | n/a |
| <a name="output_route_table_id"></a> [route\_table\_id](#output\_route\_table\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
