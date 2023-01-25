variable "username" {
  type = string
  default = "pokemon"
}

variable "password" {
  type = string
  default = "parangaricutirimirruaro2023"
}

variable "security_group_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "publicly_accessible" {
  type = bool
}
