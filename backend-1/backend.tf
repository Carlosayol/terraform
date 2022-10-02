terraform {
  backend "s3" {
    bucket = "backend-bucket-1-test"
    key    = "dev"
    region = "us-east-2"
  }
}
