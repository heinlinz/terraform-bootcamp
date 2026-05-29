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

################################################
## Ec2 Variable
################################################

variable "project_name" {
  description = "Project name for AMI lookup and tags"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = ""
}
#######################################


variable "domain_name" {
  type = string
}

variable "certificate_arn" {
  type = string
}

variable "alb_name" {
  type    = string
  default = ""
}
############################################

variable "policy_name" {
    description = "IAM Policy Name"
    type = string
    default = ""
}

variable "instance_profile_name" {
    description = "Instance Profile Name"
    type = string
    default = ""
}

variable "ec2_role_name" {
    description = "EC2 Role Name"
    type = string
    default = ""
}


variable "db_name" {
  type = string
}

variable "db_engine" {
  type = string
}

variable "db_engine_version" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "db_user" {
  type = string
}

variable "db_manage_master_user_password" {
  type = bool
}