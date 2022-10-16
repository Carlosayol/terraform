provider "aws" {
  region = "us-east-2"
}

module "test-ec2" {
  source        = "./modules/instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
  sg_name       = var.sg_name
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
}
