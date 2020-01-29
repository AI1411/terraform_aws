provider "aws" {
  region = "ap-northeast-1"
  profile = "default"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "tf-akira-test-bucket"
  acl = "private"

  tags = {
    Name = "my bucket"
    Environment = "Dev"
  }
}