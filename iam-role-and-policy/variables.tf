variable "region" {
  type = string
}

variable "profile" {
  type = string
}

variable "name" {
  type = string
}

variable "max_session_duration" {
  type    = string
  default = "28800"
}

variable "policy_file" {
  type = string
}

variable "policy_vars" {
  type    = map
  default = {}
}

variable "role_file" {
  type = string
}

variable "role_vars" {
  type    = map
  default = {}
}
