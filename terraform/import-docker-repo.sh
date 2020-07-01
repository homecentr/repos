#!/usr/bin/env ash

terraform import github_repository.docker_image_repo[\"$1\"] "docker-$1"
terraform import github_branch_protection.docker_image_repo[\"$1\"] "$1:master"

terraform import github_issue_label.bug[\"$1\"] "docker-$1:bug"
terraform import github_issue_label.feature[\"$1\"] "docker-$1:feature"
terraform import github_issue_label.question[\"$1\"] "docker-$1:question"
terraform import github_issue_label.dependencies[\"$1\"] "docker-$1:dependencies"
terraform import github_issue_label.wontfix[\"$1\"] "docker-$1:wontfix"
terraform import github_issue_label.released[\"$1\"] "docker-$1:released"