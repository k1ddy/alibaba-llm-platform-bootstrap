output "cluster_id" {
  value = try(alicloud_cs_managed_kubernetes.this[0].id, null)
}

output "cluster_name" {
  value = local.cluster_name
}

output "cluster_spec" {
  value = var.cluster_spec
}
