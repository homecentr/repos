resource "github_repository" "generic_repo" {
  for_each     = var.generic_repositories
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

  auto_init    = true
  private      = each.value.private
  archived     = each.value.archived
  topics       = each.value.topics

  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      auto_init
    ]
  } 
}

resource "github_branch_protection" "generic_repo" {
  for_each     = var.generic_repositories
  repository   = each.value.repo_name

  branch       = "master"

  enforce_admins = true

  required_status_checks {
    strict   = true
    contexts = each.value.status_checks_contexts
  }

  depends_on = [
    github_repository.generic_repo
  ]
}