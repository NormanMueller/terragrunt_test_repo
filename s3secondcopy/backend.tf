# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket  = "terraform-up-and-running-state-nm-0411"
    encrypt = true
    key     = "s3secondcopy/terraform.tfstate"
    region  = "us-east-1"
  }
}
