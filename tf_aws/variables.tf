
variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

# variable "aws_access_key" {}

# variable "aws_secret_key" {}

variable "webserver_amis" {

  type = map
}
variable "aws_access_key" {
  type        = string
  default     = "AKIAT6C627FS3FW7YJP4"
}

variable "aws_secret_key" {
  type        = string
  default     = "kssAyYq0XDP/Ccr7mhSIoZ3wzI5r/Ntuiz+4NSXn"
}
