terraform {
  backend "s3" {
    bucket = "terraformeksproject2021"
    key    = "state.tfstate"
    region = "ca-central-1"
  }
}
