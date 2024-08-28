locals {
  region       = "eu-north-1"
  cluster_name = "example-eks-cluster-${random_string.suffix.result}"
  vpc_name     = "example-vpc-${random_string.suffix.result}"
  vpc_cidr     = "10.0.0.0/16"

  azs = slice(data.aws_availability_zones.available.names, 0, 3)
}

data "aws_availability_zones" "available" {}

resource "random_string" "suffix" {
  length = 8
  special = false
}