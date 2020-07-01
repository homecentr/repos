resource "github_issue_label" "bug" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository  = each.value.repo_name

  name        = "bug"
  description = "Something isn't working"
  color       = "d73a4a"
}

resource "github_issue_label" "enhancement" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name       = "enhancement"
  color      = "a2eeef"
}

resource "github_issue_label" "question" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name        = "question"
  description = "Further information is requested"
  color       = "d876e3"
}

resource "github_issue_label" "dependencies" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name        = "dependencies"
  description = "Pull requests that update a dependency file"
  color       = "0366d6"
}

resource "github_issue_label" "duplicate" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name        = "duplicate"
  description = "This issue or pull request already exists"
  color       = "cfd3d7"
}

resource "github_issue_label" "released" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name        = "released"
  description = ""
  color       = "ededed"
}

resource "github_issue_label" "wontfix" {
  for_each     = merge(var.docker_image_repositories, var.template_repositories, var.generic_repositories)
  repository   = each.value.repo_name

  name        = "wontfix"
  description = "This will not be worked on"
  color       = "ffffff"
}