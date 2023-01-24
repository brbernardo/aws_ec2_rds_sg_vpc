variable "vpc_id" {
type = string
default = ""
}

variable "subnet_id" {
type = string
default = ""
}

variable "security_group_id" {
type = string
default = ""
}

variable "ami_id" {
type = string
default = ""
}

variable "instance_type" {
type = string
default = ""
}

variable "key_name" {
  type    = string
}

variable "user_data" {
type = string
default = ""
}

variable "public_key" {
    type = string
}