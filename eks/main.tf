module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"
  name = "eks-vpc"
  cidr = "10.0.0.0/16"

  azs             = data.aws_availability_zones.available.names
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
}

resource "aws_security_group" "node_group_one" {
  name        = "node-group-one-sg"
  description = "Security group for node group one"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group" "node_group_two" {
  name        = "node-group-two-sg"
  description = "Security group for node group two"
  vpc_id      = module.vpc.vpc_id
}

locals {
  cluster_name = "${var.project}-${var.environment}-eks"
}
