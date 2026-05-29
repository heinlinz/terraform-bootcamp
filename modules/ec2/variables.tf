variable "vpc_id" {
  description = "VPC ID to create the security group in"
  type        = string
}

variable "public_subnet_1_id" {
  description = "Subnet ID to launch the EC2 instance in"
  type        = string
}

variable "project_name" {
  description = "Project name for AMI lookup and tags"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = ""
}

variable "iam_instance_profile_name" {
  description = "Instance Profile Name"
  type        = string
  default     = ""
}
