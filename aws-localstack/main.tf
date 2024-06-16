provider "aws" {
  access_key                  = "test_access_key"
  secret_key                  = "test_secret_key"
  region                      = "us-east-1"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3        = "http://localhost:4566"
    dynamodb  = "http://localhost:4566"
    // Adicione mais endpoints conforme necessário
  }
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "my-bucket"
}

resource "aws_dynamodb_table" "example_table" {
  name           = "example-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }
}

