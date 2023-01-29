variable "vpc_id" {
  type    = string
  default = ""
}

variable "subnet_id" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = string
  default = ""
}

variable "ami_id" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "user_data" {
  type    = string
  default = ""
}

variable "key_name" {
  type    = string
  default = "my_key"
}