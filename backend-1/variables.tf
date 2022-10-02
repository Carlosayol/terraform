variable "bucket_name" {
  default = "backend-bucket-1-test"
}

variable "acl" {
  default = "private"
}

variable "tags" {
  default = {
    Environment = "dev",
    CreatedBy   = "terraform"
  }
}
