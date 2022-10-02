provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "backend-1" {
  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_acl" "backend-1-acl" {
  bucket = aws_s3_bucket.backend-1.id
  acl    = var.acl
}
