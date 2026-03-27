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


