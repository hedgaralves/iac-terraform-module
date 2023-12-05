provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "terraform-vpc"
  cidr = "172.17.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["172.17.1.0/24", "172.17.2.0/24", "172.17.3.0/24"]
  public_subnets  = ["172.17.10.0/24", "172.17.20.0/24", "172.17.30.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Vpc         = "main-lab"
  }
}






