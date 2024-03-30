module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "eks-cluster"
  cidr = var.vpc_cidr
  azs = var.aws_availability_zones
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  enable_dns_support = true
  enable_dns_hostnames = true
  enable_nat_gateway = true
  single_nat_gateway = true
}
