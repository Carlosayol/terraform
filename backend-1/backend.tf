terraform {
  backend "s3" {
    bucket     = "backend-bucket-1-test"
    key        = "dev"
    region     = "us-east-2"
    encrypt    = true
    kms_key_id = "arn:aws:kms:us-east-2:427168880860:key/6c79b595-228f-4278-bc59-66b6d3c80023"
  }
}
