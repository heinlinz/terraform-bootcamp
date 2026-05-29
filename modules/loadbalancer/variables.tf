variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_1_id" {
  type = string
}

variable "public_subnet_2_id" {
  type = string
}

variable "target_instance_id" {
  type = string
}

variable "target_port" {
  type    = number
  default = 80
}

variable "domain_name" {
  type = string
}

variable "certificate_arn" {
  type = string
}


variable "health_check_path" {
  type    = string
  default = "/"
}

variable "alb_name" {
  type    = string
  default = ""
}