output "vpc_id" {
  value = module.network.vpc_id
}

output "ack_cluster_id" {
  value = module.ack.cluster_id
}

output "oss_bucket_name" {
  value = module.oss.bucket_name
}
