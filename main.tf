terraform {
  backend "s3" {
    bucket         = "project-bucket-iti"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "project-iti"
  }
}

module "namespaces" {
  source     = "./namespaces"
  namespaces = ["tools", "dev"]
}