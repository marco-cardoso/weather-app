provider "aws" {
  region = local.region
  profile = local.aws_profile
}

data "aws_caller_identity" "main" {
  provider = aws
}

terraform {
  backend "s3" {
    profile = "dev"
    region = "eu-west-1"
    dynamodb_table = "terraform"
    bucket = "weather-app-terraform"
    key = "weather-app.tfstate"
  }
}
