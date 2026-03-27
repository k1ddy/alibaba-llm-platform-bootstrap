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

variable "account_id" {
  type        = string
  description = "Alibaba Cloud account ID used to keep bucket names globally unique."
}

variable "bucket_acl" {
  type        = string
  description = "ACL for the platform artifact bucket."
  default     = "private"
}

variable "bucket_name_override" {
  type        = string
  description = "Optional fixed bucket name override."
  default     = null
}

