provider "aws" {
  version    = "~> 2.28"
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
