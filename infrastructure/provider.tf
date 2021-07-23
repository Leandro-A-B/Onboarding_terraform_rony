provider "aws" {
  region = var.aws_region
}

# backend
terraform{
  backend "s3" {
    bucket = "terraform-127012818163"
    key    = "state/onboardTech/exemplo_rony/terraform.tfstate"
    region = "us-east-1"
  }
}