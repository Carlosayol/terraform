provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "terraform-instance" {
  ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  tags = {
    Name        = "test1"
    Environment = "Dev"
  }
}
