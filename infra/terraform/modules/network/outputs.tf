output "vpc_id" {
  value = alicloud_vpc.this.id
}

output "private_vswitch_ids" {
  value = [
    for key in sort(keys(alicloud_vswitch.private)) :
    alicloud_vswitch.private[key].id
  ]
}

output "private_vswitch_zone_ids" {
  value = [
    for key in sort(keys(alicloud_vswitch.private)) :
    alicloud_vswitch.private[key].zone_id
  ]
}
