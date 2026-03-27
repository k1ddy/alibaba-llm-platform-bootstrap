locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = merge(var.tags, {
    environment = var.environment
    managed_by  = "terraform"
    project     = var.project_name
    workspace   = "career-prep"
  })
}
