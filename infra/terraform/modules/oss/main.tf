terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
    }
  }
}

locals {
  bucket_name = var.bucket_name_override != null ? var.bucket_name_override : "${var.project_name}-${var.environment}-${var.account_id}-artifacts"
}

resource "alicloud_oss_bucket" "this" {
  bucket = local.bucket_name
  tags   = var.tags
}

resource "alicloud_oss_bucket_acl" "this" {
  bucket = alicloud_oss_bucket.this.id
  acl    = var.bucket_acl
}
