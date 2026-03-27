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

variable "kubernetes_version" {
  type        = string
  description = "ACK Kubernetes version."
}

variable "vpc_id" {
  type        = any
  description = "VPC identifier from the network module."
}

variable "worker_vswitch_ids" {
  type        = list(any)
  description = "Worker node vswitch identifiers."
}

