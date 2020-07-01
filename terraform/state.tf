terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "homecentr"

    workspaces {
      name = "repos"
    }
  }
}