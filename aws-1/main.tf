provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "terraform-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
}
 
