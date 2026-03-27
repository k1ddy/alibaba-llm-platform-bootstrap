terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
    }
  }
}

locals {
  cluster_name = "${var.project_name}-${var.environment}-ack"
}

resource "alicloud_cs_managed_kubernetes" "this" {
  count = var.enabled ? 1 : 0

  name                           = local.cluster_name
  cluster_spec                   = var.cluster_spec
  version                        = var.kubernetes_version
  profile                        = "Default"
  vswitch_ids                    = var.vswitch_ids
  service_cidr                   = var.service_cidr
  pod_cidr                       = var.pod_cidr
  new_nat_gateway                = var.new_nat_gateway
  slb_internet_enabled           = var.slb_internet_enabled
  skip_set_certificate_authority = true
  deletion_protection            = var.deletion_protection

  dynamic "addons" {
    for_each = var.addons
    content {
      name     = addons.value.name
      config   = addons.value.config
      disabled = addons.value.disabled
    }
  }
}
