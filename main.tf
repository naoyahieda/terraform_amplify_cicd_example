provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "ap-northeast-1"
}

/*
terraform {
  backend "s3" {
    bucket = "バケット"
    key = "key"
    encrypt = true
    region = "ap-northeast-1"
  }
}
*/