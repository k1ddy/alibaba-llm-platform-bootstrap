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

variable "alicloud_account_id" {
  type        = string
  description = "Alibaba Cloud account ID used for globally unique resource names."
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

variable "ack_enabled" {
  type        = bool
  description = "Whether the ACK cluster should be created in this environment."
  default     = false
}

variable "ack_cluster_spec" {
  type        = string
  description = "ACK cluster specification, for example ack.standard."
  default     = "ack.standard"
}

variable "ack_service_cidr" {
  type        = string
  description = "Service CIDR for the ACK cluster."
  default     = "172.20.0.0/16"
}

variable "ack_pod_cidr" {
  type        = string
  description = "Pod CIDR for the ACK cluster when using flannel."
  default     = "172.21.0.0/20"
}

variable "ack_new_nat_gateway" {
  type        = bool
  description = "Whether ACK should create a NAT gateway during cluster creation."
  default     = false
}

variable "ack_slb_internet_enabled" {
  type        = bool
  description = "Whether the ACK API server load balancer should be internet-facing."
  default     = false
}

variable "ack_deletion_protection" {
  type        = bool
  description = "Whether deletion protection is enabled for the ACK cluster."
  default     = false
}

variable "ack_addons" {
  type = list(object({
    name     = string
    config   = string
    disabled = bool
  }))
  description = "Minimal addon set for the ACK cluster contract."
  default = [
    {
      name     = "flannel"
      config   = ""
      disabled = false
    },
    {
      name     = "csi-plugin"
      config   = ""
      disabled = false
    },
    {
      name     = "csi-provisioner"
      config   = ""
      disabled = false
    }
  ]
}

variable "tags" {
  type        = map(string)
  description = "Common tags applied to all supported resources."
  default     = {}
}
