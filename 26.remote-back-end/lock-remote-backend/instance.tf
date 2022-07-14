terraform {
  backend "s3" {
    bucket = "fahad-bucket"
    region = "us-east-1"
    key = "terraform.tfstate"
    dynamodb_table = "fahad-table"
  }
}

# then add the instance code below
