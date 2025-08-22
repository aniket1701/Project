terraform {
  backend "s3" {
    bucket = "my-project-tfstate-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
