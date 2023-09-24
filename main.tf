provider "aws" {
  region  = "us-east-1"
}

resource "random_pet" "bucket_name" {
  length    = 2
  separator = "-"
  prefix    = "s3bucket4tfstate-"
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "${random_pet.bucket_name.id}"
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
