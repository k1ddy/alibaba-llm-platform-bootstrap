variable "project_name" {
  type        = string
  description = "Logical platform name used for naming and tags."
}

variable "environment" {
  type        = string
  description = "Environment name."
}

variable "tags" {
  type        = map(string)
  description = "Common tags for supported resources."
  default     = {}
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the platform VPC."
}

variable "private_vswitch_cidrs" {
  type        = list(string)
  description = "Private vswitch CIDRs for workloads."
}

