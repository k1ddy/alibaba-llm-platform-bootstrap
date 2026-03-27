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

variable "enabled" {
  type        = bool
  description = "Whether the ACK cluster resource should be created."
  default     = false
}

variable "cluster_spec" {
  type        = string
  description = "ACK cluster specification."
  default     = "ack.standard"
}

variable "vswitch_ids" {
  type        = list(string)
  description = "VSwitch IDs used by the cluster control plane."
}

variable "service_cidr" {
  type        = string
  description = "Service CIDR for the ACK cluster."
}

variable "pod_cidr" {
  type        = string
  description = "Pod CIDR used when running the flannel network plugin."
}

variable "new_nat_gateway" {
  type        = bool
  description = "Whether ACK should create a new NAT gateway during cluster creation."
  default     = false
}

variable "slb_internet_enabled" {
  type        = bool
  description = "Whether the API server load balancer should be internet-facing."
  default     = false
}

variable "deletion_protection" {
  type        = bool
  description = "Whether deletion protection is enabled for the cluster."
  default     = false
}

variable "addons" {
  type = list(object({
    name     = string
    config   = string
    disabled = bool
  }))
  description = "Minimal addon set for the cluster contract."
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
