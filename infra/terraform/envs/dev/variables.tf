variable "project_name" {
  type        = string
  description = "Logical platform name used for naming and tags."
}

variable "environment" {
  type        = string
  description = "Environment name, for example dev or stage."
}

variable "alicloud_region" {
  type        = string
  description = "Alibaba Cloud region for this environment."
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the platform VPC."
}

variable "private_vswitch_cidrs" {
  type        = list(string)
  description = "Private vswitch CIDRs reserved for platform workloads."
}

variable "kubernetes_version" {
  type        = string
  description = "Supported ACK Kubernetes version for the target region."
}

variable "tags" {
  type        = map(string)
  description = "Common tags applied to all supported resources."
  default     = {}
}
