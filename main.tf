provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "tf-state-s3-for-imagesharingprogram3"
  acl    = "private"
  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name           = "tfstate_lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
