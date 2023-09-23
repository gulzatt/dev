data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "sherova"
    workspaces = {
      name = "vpc"
    }
  }
}