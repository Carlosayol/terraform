# provider "aws" {
#   region = "us-east-2"
# }

# resource "aws_s3_bucket" "backend-1" {
#   bucket = var.bucket_name
#   tags   = var.tags
# }

# resource "aws_s3_bucket_acl" "backend-1-acl" {
#   bucket = aws_s3_bucket.backend-1.id
#   acl    = var.acl
# }

provider "aws" {
  region = "us-east-2"
}

resource "aws_kms_key" "mykey" {
  description             = "Key State File"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "backend-1" {
  bucket = var.bucket_name
  tags   = var.tags
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket_acl" "backend-1-acl" {
  bucket = aws_s3_bucket.backend-1.id
  acl    = var.acl
}

output "arn" {
  value = aws_kms_key.mykey.arn
}
