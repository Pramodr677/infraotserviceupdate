terraform {
  backend "s3" {
    bucket = "projectot"
    key    = "otservice/terraform.tfstate"
    region = "ap-south-1"
  }
}
