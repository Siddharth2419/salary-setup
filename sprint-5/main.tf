provider "aws" {
  region = var.aws_region
}
module "salary_setup" {
  source = "./salary-setup"

  vpc_cidr_block           = "10.0.0.0/16"
  instance_tenancy         = "default"
  vpc_name                 = "dev-vpc"
  public_subnet_cidr       = ["10.0.1.0/24", "10.0.2.0/24"]
  public_sub_az            = ["us-west-2a", "us-west-2b"]
  map_public_ip_on_launch  = true
  public_subnet_name       = "public-subnet"
  public_subnet_tags       = {}
  private_subnet_cidr      = ["10.0.3.0/24", "10.0.4.0/24"]
  private_sub_az           = ["us-west-2a", "us-west-2b"]
  private_subnet_tags      = [{ name = "private-1", environment = "dev" }, { name = "private-2", environment = "dev" }]
  igw_name                 = "dev-igw"
  elasticip_name           = "dev-eip"
  public_rt_tag            = [{ name = "public-rt-1", environment = "dev" }, { name = "public-rt-2", environment = "dev" }]
  private_rt_tag           = [{ name = "private-rt-1", environment = "dev" }, { name = "private-rt-2", environment = "dev" }]
  public_nacl_ingress_rules = []
  public_nacl_egress_rules  = []
  public_nacl_tags          = { name = "public-nacl", environment = "dev" }
  frontend_nacl_ingress_rules = []
  frontend_nacl_egress_rules  = []
  frontend_nacl_tags          = { name = "frontend-nacl", environment = "dev" }
  application_nacl_ingress_rules = []
  application_nacl_egress_rules  = []
  application_nacl_tags          = { name = "application-nacl", environment = "dev" }
  database_nacl_ingress_rules = []
  database_nacl_egress_rules  = []
  database_nacl_tags          = { name = "database-nacl", environment = "dev" }
  alb_sg_name              = ["alb-sg"]
  alb_sg_tag               = { name = "alb-sg", environment = "dev" }
  alb_ingress_rule         = []
  alb_egress_rule          = []
  alb_name                 = ["test-alb"]
  alb_internal             = false
  alb_balancer_type        = ["application"]
}
