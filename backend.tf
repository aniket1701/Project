terraform {
  backend "s3" {
    bucket = "mydev-terraform-project"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "mydev-terraform-project-dynamodb-table"
  }
}
