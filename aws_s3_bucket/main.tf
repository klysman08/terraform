provider "aws" {
  region = "us-east-1"
  #profile = "default"
}

resource "aws_s3_bucket" "terraform-test-bucket" {
  bucket = "terraform-test-bucket-klysman8728378ffd743"


  tags = {
    Name        = "My bucket Terraform"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Time       = "2021-07-07"
  }
}