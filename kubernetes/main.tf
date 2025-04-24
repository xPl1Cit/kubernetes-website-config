locals {
  cluster_name = "${var.project}-${var.environment}-eks"
}

module "kubernetes" {
    source = "../modules/website-config"
    project = var.project
    container = var.container
}