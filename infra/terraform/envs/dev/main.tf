module "network" {
  source = "../../modules/network"

  project_name          = var.project_name
  environment           = var.environment
  vpc_cidr              = var.vpc_cidr
  private_vswitch_cidrs = var.private_vswitch_cidrs
  tags                  = local.common_tags
}

module "kms" {
  source = "../../modules/kms"

  project_name = var.project_name
  environment  = var.environment
  tags         = local.common_tags
}

module "oss" {
  source = "../../modules/oss"

  project_name = var.project_name
  environment  = var.environment
  account_id   = var.alicloud_account_id
  tags         = local.common_tags
}

module "tair" {
  source = "../../modules/tair"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.network.vpc_id
  vswitch_ids  = module.network.private_vswitch_ids
  tags         = local.common_tags
}

module "polardb" {
  source = "../../modules/polardb"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.network.vpc_id
  vswitch_ids  = module.network.private_vswitch_ids
  tags         = local.common_tags
}

module "ack" {
  source = "../../modules/ack"

  project_name       = var.project_name
  environment        = var.environment
  kubernetes_version = var.kubernetes_version
  vpc_id             = module.network.vpc_id
  worker_vswitch_ids = module.network.private_vswitch_ids
  tags               = local.common_tags
}

module "observability" {
  source = "../../modules/observability"

  project_name = var.project_name
  environment  = var.environment
  cluster_id   = module.ack.cluster_id
  tags         = local.common_tags
}
