variable "cidr_block" {
  description = "AWS VPC CIDR"
  type        = string
  default     = ""
}

variable "public_subnet_1" {
  description = "VPC Public Subnet CIDR"
  type        = string
  default     = ""
}

variable "public_subnet_2" {
  description = "VPC Public Subnet CIDR"
  type        = string
  default     = ""
}

variable "private_subnet_1" {
  description = "VPC Private Subnet CIDR"
  type        = string
  default     = ""
}

variable "private_subnet_2" {
  description = "VPC Private Subnet CIDR"
  type        = string
  default     = ""
}
