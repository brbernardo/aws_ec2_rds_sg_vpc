variable "username" {
  type = string
  default = "pokemon"
}

variable "password" {
  type = string
  default = "parangaricutirimirruaro2023"
}


variable "publicly_accessible" {
  type = bool
  default = true
}


variable "subnet_id" {
    type = list
}