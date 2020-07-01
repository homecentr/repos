resource "github_repository" "docker_image_repo" {
  for_each     = var.docker_image_repositories
  name         = each.value.repo_name

  homepage_url = "https://homecentr.github.io"

  has_issues    = true
  has_projects  = false
  has_wiki      = false
  has_downloads = false
  is_template   = false

  allow_squash_merge  = true
  allow_merge_commit  = false  
  allow_rebase_merge  = false

  visibility   = "public"
  archived     = each.value.archived
  topics       = each.value.topics

  template {
    owner = "homecentr"
    repository = "docker-template"
  }

  lifecycle {
    prevent_destroy = true
  } 
}

resource "github_branch_protection" "docker_image_repo" {
  for_each     = var.docker_image_repositories
  repository   = each.value.repo_name

  branch       = "master"

  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = each.value.status_checks_contexts
  }
}