terraform {
  backend "s3" {
    region               = "us-west-2"
    bucket               = "galargh-github-mgmt"
    key                  = "terraform.tfstate"
    workspace_key_prefix = "org"
    dynamodb_table       = "galargh-github-mgmt"
  }
}
