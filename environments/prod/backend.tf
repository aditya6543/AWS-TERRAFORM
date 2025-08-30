terraform {
  backend "s3" {
    bucket         = "YOUR_UNIQUE_S3_BUCKET_NAME" # CHANGE THIS
    key            = "prod/terraform.tfstate"
    region         = "us-east-1" # CHANGE THIS to your bucket's region
    dynamodb_table = "YOUR_DYNAMODB_TABLE_NAME" # CHANGE THIS
    encrypt        = true
  }
}