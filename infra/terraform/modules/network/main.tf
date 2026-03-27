terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
    }
  }
}

data "alicloud_zones" "available" {
  available_resource_creation = "VSwitch"
}

locals {
  name_prefix = "${var.project_name}-${var.environment}"

  private_vswitch_map = {
    for idx, cidr in var.private_vswitch_cidrs :
    format("private-%02d", idx + 1) => {
      cidr_block = cidr
      zone_id    = data.alicloud_zones.available.zones[idx % length(data.alicloud_zones.available.zones)].id
    }
  }
}

resource "alicloud_vpc" "this" {
  vpc_name   = "${local.name_prefix}-vpc"
  cidr_block = var.vpc_cidr
  tags       = var.tags
}

resource "alicloud_vswitch" "private" {
  for_each = local.private_vswitch_map

  vpc_id       = alicloud_vpc.this.id
  cidr_block   = each.value.cidr_block
  zone_id      = each.value.zone_id
  vswitch_name = "${local.name_prefix}-${each.key}"
  tags         = var.tags
}
